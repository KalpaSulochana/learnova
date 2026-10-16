import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

import 'package:learnova/models/resource_item.dart';

/// SQLite-backed metadata cache. The PDF files themselves are not stored here.
class ResourceCache {
  static const String _databaseName = 'learnova_resources.db';
  static const int _databaseVersion = 1;
  static const String _resourceTable = 'resource_items';
  static const String _metadataTable = 'resource_cache_metadata';
  static const String _lastUpdatedKey = 'last_updated_at';
  static const String _lastSourceKey = 'source_id';

  Future<Database>? _databaseFuture;

  Future<Database> get _database =>
      _databaseFuture ??= _openDatabase();

  Future<Database> _openDatabase() async {
    final String databasePath = await getDatabasesPath();
    return openDatabase(
      path.join(databasePath, _databaseName),
      version: _databaseVersion,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE $_resourceTable (
            id TEXT PRIMARY KEY,
            title TEXT NOT NULL,
            subtitle TEXT NOT NULL,
            type TEXT NOT NULL,
            url TEXT NOT NULL,
            subject_id TEXT NOT NULL,
            icon_key TEXT NOT NULL,
            open_in_viewer INTEGER NOT NULL,
            viewer_title TEXT,
            language TEXT,
            year INTEGER
          )
        ''');
        await db.execute(
          'CREATE INDEX idx_resource_subject ON $_resourceTable(subject_id)',
        );
        await db.execute('''
          CREATE TABLE $_metadataTable (
            key TEXT PRIMARY KEY,
            value TEXT NOT NULL
          )
        ''');
      },
    );
  }

  Future<List<ResourceItem>> readAll() async {
    final Database db = await _database;
    final List<Map<String, Object?>> rows = await db.query(
      _resourceTable,
      orderBy: 'year DESC, title COLLATE NOCASE ASC',
    );
    return rows.map(ResourceItem.fromDatabase).toList(growable: false);
  }

  Future<DateTime?> lastUpdatedAt() async {
    final Database db = await _database;
    final List<Map<String, Object?>> rows = await db.query(
      _metadataTable,
      columns: const ['value'],
      where: 'key = ?',
      whereArgs: const [_lastUpdatedKey],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return DateTime.tryParse(rows.first['value']! as String);
  }

  Future<String?> lastSource() async {
    final Database db = await _database;
    final List<Map<String, Object?>> rows = await db.query(
      _metadataTable,
      columns: const ['value'],
      where: 'key = ?',
      whereArgs: const [_lastSourceKey],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return rows.first['value'] as String?;
  }

  /// Replaces metadata atomically so interrupted downloads do not leave a
  /// partially updated resource catalog. [source] prevents a fresh cache from
  /// a different manifest being displayed when an endpoint is changed.
  Future<void> replaceAll(
    List<ResourceItem> resources, {
    required String source,
  }) async {
    final Database db = await _database;
    final String timestamp = DateTime.now().toUtc().toIso8601String();

    await db.transaction((Transaction transaction) async {
      await transaction.delete(_resourceTable);
      final Batch batch = transaction.batch();
      for (final ResourceItem resource in resources) {
        batch.insert(
          _resourceTable,
          resource.toDatabaseMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
      await batch.commit(noResult: true);
      await transaction.insert(
        _metadataTable,
        <String, Object?>{'key': _lastUpdatedKey, 'value': timestamp},
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      await transaction.insert(
        _metadataTable,
        <String, Object?>{'key': _lastSourceKey, 'value': source},
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });
  }
}
