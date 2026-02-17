// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutSet _$WorkoutSetFromJson(Map<String, dynamic> json) => _WorkoutSet(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  weightKg: (json['weightKg'] as num).toDouble(),
  reps: (json['reps'] as num).toInt(),
  rpe: (json['rpe'] as num?)?.toDouble(),
  note: json['note'] as String?,
);

Map<String, dynamic> _$WorkoutSetToJson(_WorkoutSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'weightKg': instance.weightKg,
      'reps': instance.reps,
      'rpe': instance.rpe,
      'note': instance.note,
    };
