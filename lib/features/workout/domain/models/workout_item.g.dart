// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutItem _$WorkoutItemFromJson(Map<String, dynamic> json) => _WorkoutItem(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  exerciseId: json['exerciseId'] as String,
  exerciseNameSnapshot: json['exerciseNameSnapshot'] as String,
  sets:
      (json['sets'] as List<dynamic>?)
          ?.map((e) => WorkoutSet.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <WorkoutSet>[],
);

Map<String, dynamic> _$WorkoutItemToJson(_WorkoutItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'exerciseId': instance.exerciseId,
      'exerciseNameSnapshot': instance.exerciseNameSnapshot,
      'sets': instance.sets,
    };
