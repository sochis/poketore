import 'package:freezed_annotation/freezed_annotation.dart';

import 'workout_set.dart';

part 'workout_item.freezed.dart';
part 'workout_item.g.dart';

@freezed
abstract class WorkoutItem with _$WorkoutItem {
  const factory WorkoutItem({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
    required String exerciseId,
    required String exerciseNameSnapshot,
    @Default(<WorkoutSet>[]) List<WorkoutSet> sets,
  }) = _WorkoutItem;

  factory WorkoutItem.fromJson(Map<String, dynamic> json) =>
      _$WorkoutItemFromJson(json);
}
