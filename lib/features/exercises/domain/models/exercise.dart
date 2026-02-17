import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

enum MuscleGroup { chest, back, legs, shoulders, arms, core, fullBody }

enum ExerciseType { compound, isolation }

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    required String id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
    String? ownerUserId,
    @Default(MuscleGroup.chest) MuscleGroup muscleGroup,
    @Default(ExerciseType.compound) ExerciseType type,
    @Default(false) bool isPreset,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
