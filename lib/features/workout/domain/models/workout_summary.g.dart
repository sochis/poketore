// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutSummary _$WorkoutSummaryFromJson(Map<String, dynamic> json) =>
    _WorkoutSummary(
      totalSets: (json['totalSets'] as num?)?.toInt() ?? 0,
      totalReps: (json['totalReps'] as num?)?.toInt() ?? 0,
      totalVolume: (json['totalVolume'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$WorkoutSummaryToJson(_WorkoutSummary instance) =>
    <String, dynamic>{
      'totalSets': instance.totalSets,
      'totalReps': instance.totalReps,
      'totalVolume': instance.totalVolume,
    };
