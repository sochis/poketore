import 'package:freezed_annotation/freezed_annotation.dart';

import 'workout_item.dart';
import 'workout_summary.dart';

part 'workout_session.freezed.dart';
part 'workout_session.g.dart';

enum SyncStatus { synced, pending, failed }

@freezed
abstract class WorkoutSession with _$WorkoutSession {
  const factory WorkoutSession({
    required String id,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
    required DateTime startedAt,
    DateTime? endedAt,
    String? note,
    @Default(<WorkoutItem>[]) List<WorkoutItem> items,
    WorkoutSummary? summary,
    @Default(SyncStatus.pending) SyncStatus syncStatus,
  }) = _WorkoutSession;

  factory WorkoutSession.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSessionFromJson(json);
}
