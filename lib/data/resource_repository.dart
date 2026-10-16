import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:learnova/data/resource_cache.dart';
import 'package:learnova/models/resource_item.dart';

/// Fetches resource metadata from a public Cloudflare R2 JSON manifest.
///
/// Expected manifest format:
/// {
///   "resources": [
///     {
///       "id": "combined-maths-2025-paper-1",
///       "subjectId": "combined_maths",
///       "type": "past_paper",
///       "title": "2025 AL",
///       "subtitle": "Full paper · Sinhala medium",
///       "url": "https://<public-r2-host>/<object-key>.pdf",
///       "openInViewer": true,
///       "iconKey": "functions"
///     }
///   ]
/// }
///
/// A JSON array at the top level is also accepted. Keep the manifest public or
/// use an appropriate URL-signing strategy for private R2 objects.
class ResourceRepository {
  ResourceRepository({
    required ResourceCache cache,
    required http.Client client,
    required String manifestUrl,
    required List<ResourceItem> mockResources,
    this.cacheMaxAge = const Duration(hours: 6),
  }) : _cache = cache,
       _client = client,
       _manifestUrl = manifestUrl.trim(),
       _mockResources = mockResources;

  final ResourceCache _cache;
  final http.Client _client;
  final String _manifestUrl;
  final List<ResourceItem> _mockResources;
  final Duration cacheMaxAge;

  Future<List<ResourceItem>> getResources({
    required String subjectId,
    bool forceRefresh = false,
  }) async {
    // A missing manifest URL means this build is using the local development
    // fixture, so it should not accidentally display an old production cache.
    if (_manifestUrl.isEmpty) {
      // Keep the mock catalog available offline and seed the same SQLite cache
      // used by production, so the mock path exercises the cache integration.
      await _saveCacheSafely(_mockResources, source: 'mock');
      return _forSubject(_mockResources, subjectId);
    }

    final List<ResourceItem> cached = await _readCacheSafely();
    final DateTime? updatedAt = await _lastUpdatedSafely();
    final String? cachedSource = await _lastSourceSafely();
    final bool cacheBelongsToManifest =
        cachedSource == null || cachedSource == _manifestUrl;
    final bool cacheIsFresh = _cacheIsFresh(
      cached,
      updatedAt,
      cacheBelongsToManifest,
    );

    if (!forceRefresh && cacheIsFresh) {
      return _forSubject(cached, subjectId);
    }

    try {
      final Uri uri = Uri.parse(_manifestUrl);
      if (uri.scheme != 'https' && uri.scheme != 'http') {
        throw FormatException('The resource manifest URL must use HTTP or HTTPS.');
      }

      final http.Response response = await _client
          .get(
            uri,
            headers: const <String, String>{
              'Accept': 'application/json',
            },
          )
          .timeout(const Duration(seconds: 20));

      if (response.statusCode < 200 || response.statusCode >= 300) {
        throw ResourceRepositoryException(
          'The resource manifest returned HTTP ${response.statusCode}.',
        );
      }

      final Object? decoded = jsonDecode(utf8.decode(response.bodyBytes));
      final List<dynamic> rawItems;
      if (decoded is List<dynamic>) {
        rawItems = decoded;
      } else if (decoded is Map<String, dynamic> &&
          decoded['resources'] is List<dynamic>) {
        rawItems = decoded['resources'] as List<dynamic>;
      } else {
        throw const FormatException(
          'Manifest must be a JSON array or an object containing a resources array.',
        );
      }

      final List<ResourceItem> resources = rawItems.map((Object? item) {
        if (item is! Map<String, dynamic>) {
          throw const FormatException('Every manifest resource must be a JSON object.');
        }
        return ResourceItem.fromJson(item);
      }).toList(growable: false);
      final Set<String> ids = <String>{};
      for (final ResourceItem resource in resources) {
        if (!ids.add(resource.id)) {
          throw FormatException('Duplicate resource id in manifest: ${resource.id}');
        }
      }

      await _saveCacheSafely(resources, source: _manifestUrl);
      return _forSubject(resources, subjectId);
    } catch (error) {
      // Only use offline metadata from this manifest (or legacy rows with no
      // source marker); never serve the mock fixture for a production manifest.
      if (cached.isNotEmpty && cacheBelongsToManifest) {
        return _forSubject(cached, subjectId);
      }
      throw ResourceRepositoryException(
        'Could not load Learnova resources. Check the manifest URL and connection.',
        cause: error,
      );
    }
  }

  Future<List<ResourceItem>> _readCacheSafely() async {
    try {
      return await _cache.readAll();
    } catch (_) {
      // Cache problems should not block the network request.
      return const <ResourceItem>[];
    }
  }

  Future<DateTime?> _lastUpdatedSafely() async {
    try {
      return await _cache.lastUpdatedAt();
    } catch (_) {
      return null;
    }
  }

  Future<String?> _lastSourceSafely() async {
    try {
      return await _cache.lastSource();
    } catch (_) {
      return null;
    }
  }

  bool _cacheIsFresh(
    List<ResourceItem> cached,
    DateTime? updatedAt,
    bool cacheBelongsToManifest,
  ) {
    return cached.isNotEmpty &&
        cacheBelongsToManifest &&
        updatedAt != null &&
        DateTime.now().toUtc().difference(updatedAt.toUtc()) < cacheMaxAge;
  }

  Future<void> _saveCacheSafely(
    List<ResourceItem> resources, {
    required String source,
  }) async {
    try {
      await _cache.replaceAll(resources, source: source);
    } catch (_) {
      // Keep fetched resources available even if local storage is unavailable.
    }
  }

  List<ResourceItem> _forSubject(List<ResourceItem> resources, String subjectId) {
    final String normalizedSubjectId = subjectId.trim().toLowerCase();
    return resources
        .where((ResourceItem item) =>
            item.subjectId.trim().toLowerCase() == normalizedSubjectId)
        .toList(growable: false);
  }
}

class ResourceRepositoryException implements Exception {
  const ResourceRepositoryException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => cause == null ? message : '$message ($cause)';
}


/// Explicit mock implementation used during local development and UI testing.
/// It returns fixture metadata without issuing HTTP requests and seeds the same
/// SQLite cache interface as the production repository.
class MockResourceRepository extends ResourceRepository {
  MockResourceRepository({
    required ResourceCache cache,
    required http.Client client,
    required List<ResourceItem> resources,
  }) : super(
         cache: cache,
         client: client,
         manifestUrl: '',
         mockResources: resources,
       );
}
