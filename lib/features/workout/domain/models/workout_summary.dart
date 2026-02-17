import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_summary.freezed.dart';
part 'workout_summary.g.dart';

@freezed
abstract class WorkoutSummary with _$WorkoutSummary {
  const factory WorkoutSummary({
    @Default(0) int totalSets,
    @Default(0) int totalReps,
    @Default(0) double totalVolume,
  }) = _WorkoutSummary;

  factory WorkoutSummary.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSummaryFromJson(json);
}
