import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../sync/data/local/db/app_database.dart' as local;
import '../../domain/models/workout_item.dart';
import '../../domain/models/workout_session.dart';
import '../../domain/models/workout_summary.dart';

class WorkoutSessionLocalDatasource {
  WorkoutSessionLocalDatasource(this._db);

  final local.AppDatabase _db;

  Future<void> upsertSession(WorkoutSession session) async {
    await _db
        .into(_db.workoutSessions)
        .insertOnConflictUpdate(
          local.WorkoutSessionsCompanion(
            id: Value(session.id),
            userId: Value(session.userId),
            createdAt: Value(session.createdAt),
            updatedAt: Value(session.updatedAt),
            startedAt: Value(session.startedAt),
            endedAt: Value(session.endedAt),
            deletedAt: Value(session.deletedAt),
            note: Value(session.note),
            itemsJson: Value(
              jsonEncode(session.items.map((item) => item.toJson()).toList()),
            ),
            summaryJson: Value(
              session.summary == null
                  ? null
                  : jsonEncode(session.summary!.toJson()),
            ),
            syncStatus: Value(session.syncStatus.name),
          ),
        );
  }

  Future<List<WorkoutSession>> findPendingOrFailed() async {
    final rows =
        await (_db.select(_db.workoutSessions)
              ..where(
                (tbl) =>
                    tbl.syncStatus.equals(SyncStatus.pending.name) |
                    tbl.syncStatus.equals(SyncStatus.failed.name),
              )
              ..orderBy([(tbl) => OrderingTerm(expression: tbl.updatedAt)]))
            .get();

    return rows.map(_toDomain).toList();
  }

  Future<int> pendingCount() async {
    final query = _db.selectOnly(_db.workoutSessions)
      ..addColumns([_db.workoutSessions.id.count()])
      ..where(
        _db.workoutSessions.syncStatus.equals(SyncStatus.pending.name) |
            _db.workoutSessions.syncStatus.equals(SyncStatus.failed.name),
      );
    final row = await query.getSingle();
    return row.read(_db.workoutSessions.id.count()) ?? 0;
  }

  Future<void> markSynced(String sessionId) async {
    await (_db.update(
      _db.workoutSessions,
    )..where((t) => t.id.equals(sessionId))).write(
      local.WorkoutSessionsCompanion(syncStatus: Value(SyncStatus.synced.name)),
    );
  }

  Future<List<WorkoutSession>> findAllSessions() async {
    final rows = await (_db.select(
      _db.workoutSessions,
    )..orderBy([(tbl) => OrderingTerm(expression: tbl.updatedAt)])).get();
    return rows.map(_toDomain).toList();
  }

  WorkoutSession _toDomain(local.WorkoutSession row) {
    final syncStatus = SyncStatus.values.firstWhere(
      (status) => status.name == row.syncStatus,
      orElse: () => SyncStatus.pending,
    );

    return WorkoutSession(
      id: row.id,
      userId: row.userId,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
      deletedAt: row.deletedAt,
      startedAt: row.startedAt,
      endedAt: row.endedAt,
      note: row.note,
      items: (jsonDecode(row.itemsJson) as List<dynamic>)
          .map((item) => WorkoutItem.fromJson(item as Map<String, dynamic>))
          .toList(),
      summary: row.summaryJson == null
          ? null
          : WorkoutSummary.fromJson(
              jsonDecode(row.summaryJson!) as Map<String, dynamic>,
            ),
      syncStatus: syncStatus,
    );
  }
}
