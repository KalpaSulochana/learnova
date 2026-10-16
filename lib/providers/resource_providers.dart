import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import 'package:learnova/data/mock_resource_data.dart';
import 'package:learnova/data/resource_cache.dart';
import 'package:learnova/data/resource_repository.dart';
import 'package:learnova/models/resource_item.dart';

final resourceCacheProvider = Provider<ResourceCache>((Ref ref) {
  return ResourceCache();
});

final resourceHttpClientProvider = Provider<http.Client>((Ref ref) {
  final http.Client client = http.Client();
  ref.onDispose(client.close);
  return client;
});

final resourceRepositoryProvider = Provider<ResourceRepository>((Ref ref) {
  final ResourceCache cache = ref.watch(resourceCacheProvider);
  final http.Client client = ref.watch(resourceHttpClientProvider);
  const String manifestUrl = String.fromEnvironment(
    'LEARNOVA_RESOURCE_MANIFEST_URL',
    defaultValue: '',
  );

  if (manifestUrl.trim().isEmpty) {
    return MockResourceRepository(
      cache: cache,
      client: client,
      resources: mockCombinedMathsResources,
    );
  }

  return ResourceRepository(
    cache: cache,
    client: client,
    manifestUrl: manifestUrl,
    mockResources: mockCombinedMathsResources,
  );
});

/// Cached by subject id so the same catalog can serve multiple subject screens.
final resourceItemsProvider =
    FutureProvider.family<List<ResourceItem>, String>((Ref ref, String subjectId) {
      return ref.watch(resourceRepositoryProvider).getResources(
        subjectId: subjectId,
      );
    });
