/// The kind of learning resource shown in Learnova's resource tabs.
enum ResourceType {
  pastPaper('past_paper'),
  note('note'),
  markingScheme('marking_scheme');

  const ResourceType(this.value);

  final String value;

  static ResourceType fromValue(Object? value) {
    final String normalized = (value ?? 'past_paper')
        .toString()
        .trim()
        .toLowerCase()
        .replaceAll('-', '_')
        .replaceAll(' ', '_');

    switch (normalized) {
      case 'paper':
      case 'pastpaper':
      case 'past_papers':
      case 'past_paper':
        return ResourceType.pastPaper;
      case 'notes':
      case 'note':
        return ResourceType.note;
      case 'markingscheme':
      case 'marking_schemes':
      case 'marking_scheme':
        return ResourceType.markingScheme;
      default:
        throw FormatException('Unknown resource type: $value');
    }
  }
}

/// Metadata for a Learnova resource.
///
/// Keep this model independent from Flutter widgets. URLs point to the actual
/// document (for example, a public Cloudflare R2 object URL), not to a UI page.
class ResourceItem {
  const ResourceItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.url,
    this.subjectId = 'combined_maths',
    this.iconKey = 'picture_as_pdf',
    this.openInViewer = true,
    this.viewerTitle,
    this.language,
    this.year,
  });

  final String id;
  final String title;
  final String subtitle;
  final ResourceType type;
  final String url;
  final String subjectId;
  final String iconKey;
  final bool openInViewer;
  final String? viewerTitle;
  final String? language;
  final int? year;

  factory ResourceItem.fromJson(Map<String, dynamic> json) {
    final String title = _readString(json, const ['title', 'name']);
    final String subtitle = _readString(
      json,
      const ['subtitle', 'description'],
      fallback: '',
    );
    final String url = _readString(
      json,
      const ['url', 'documentUrl', 'pdfUrl', 'document_url'],
    );
    final Uri? uri = Uri.tryParse(url);
    if (uri == null ||
        !uri.hasScheme ||
        (uri.scheme != 'https' && uri.scheme != 'http') ||
        uri.host.isEmpty) {
      throw FormatException('Resource "$title" has an invalid URL: $url');
    }

    final String id = _readString(json, const ['id']);
    final String subjectId = _readString(
      json,
      const ['subjectId', 'subject_id', 'subject'],
      fallback: 'combined_maths',
    );
    final ResourceType type = ResourceType.fromValue(
      json['type'] ?? json['resourceType'] ?? json['category'],
    );
    final Object? rawOpenInViewer = json['openInViewer'] ?? json['open_in_viewer'];
    final bool openInViewer = rawOpenInViewer is bool
        ? rawOpenInViewer
        : rawOpenInViewer is num
        ? rawOpenInViewer != 0
        : _shouldOpenInViewer(uri);
    final Object? rawYear = json['year'];

    return ResourceItem(
      id: id,
      title: title,
      subtitle: subtitle,
      type: type,
      url: url,
      subjectId: subjectId,
      iconKey: _readString(
        json,
        const ['iconKey', 'icon_key', 'icon'],
        fallback: 'picture_as_pdf',
      ),
      openInViewer: openInViewer,
      viewerTitle: _readNullableString(json, const ['viewerTitle', 'viewer_title']),
      language: _readNullableString(json, const ['language', 'medium']),
      year: rawYear is int ? rawYear : int.tryParse(rawYear?.toString() ?? ''),
    );
  }

  /// Converts the resource into the public R2 JSON manifest format.
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'subtitle': subtitle,
    'type': type.value,
    'url': url,
    'subjectId': subjectId,
    'iconKey': iconKey,
    'openInViewer': openInViewer,
    if (viewerTitle != null) 'viewerTitle': viewerTitle,
    if (language != null) 'language': language,
    if (year != null) 'year': year,
  };

  /// Converts a SQLite row back into the model.
  factory ResourceItem.fromDatabase(Map<String, Object?> row) {
    return ResourceItem(
      id: row['id']! as String,
      title: row['title']! as String,
      subtitle: row['subtitle'] as String? ?? '',
      type: ResourceType.fromValue(row['type']),
      url: row['url']! as String,
      subjectId: row['subject_id'] as String? ?? 'combined_maths',
      iconKey: row['icon_key'] as String? ?? 'picture_as_pdf',
      openInViewer: (row['open_in_viewer'] as int? ?? 1) == 1,
      viewerTitle: row['viewer_title'] as String?,
      language: row['language'] as String?,
      year: row['year'] as int?,
    );
  }

  /// Values suitable for SQLite's resource_items table.
  Map<String, Object?> toDatabaseMap() => <String, Object?>{
    'id': id,
    'title': title,
    'subtitle': subtitle,
    'type': type.value,
    'url': url,
    'subject_id': subjectId,
    'icon_key': iconKey,
    'open_in_viewer': openInViewer ? 1 : 0,
    'viewer_title': viewerTitle,
    'language': language,
    'year': year,
  };

  static String _readString(
    Map<String, dynamic> json,
    List<String> keys, {
    String? fallback,
  }) {
    for (final String key in keys) {
      final Object? value = json[key];
      if (value != null && value.toString().trim().isNotEmpty) {
        return value.toString().trim();
      }
    }
    if (fallback != null) return fallback;
    throw FormatException('Missing required resource field: ${keys.first}');
  }

  static String? _readNullableString(
    Map<String, dynamic> json,
    List<String> keys,
  ) {
    for (final String key in keys) {
      final Object? value = json[key];
      if (value != null && value.toString().trim().isNotEmpty) {
        return value.toString().trim();
      }
    }
    return null;
  }

  static bool _shouldOpenInViewer(Uri uri) {
    final String path = uri.path.toLowerCase();
    return path.endsWith('.pdf') &&
        (uri.host.toLowerCase().contains('r2.dev') ||
            uri.host.toLowerCase().contains('cloudflarestorage.com'));
  }

}
