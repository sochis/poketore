// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Exercise _$ExerciseFromJson(Map<String, dynamic> json) => _Exercise(
  id: json['id'] as String,
  name: json['name'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  ownerUserId: json['ownerUserId'] as String?,
  muscleGroup:
      $enumDecodeNullable(_$MuscleGroupEnumMap, json['muscleGroup']) ??
      MuscleGroup.chest,
  type:
      $enumDecodeNullable(_$ExerciseTypeEnumMap, json['type']) ??
      ExerciseType.compound,
  isPreset: json['isPreset'] as bool? ?? false,
);

Map<String, dynamic> _$ExerciseToJson(_Exercise instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'deletedAt': instance.deletedAt?.toIso8601String(),
  'ownerUserId': instance.ownerUserId,
  'muscleGroup': _$MuscleGroupEnumMap[instance.muscleGroup]!,
  'type': _$ExerciseTypeEnumMap[instance.type]!,
  'isPreset': instance.isPreset,
};

const _$MuscleGroupEnumMap = {
  MuscleGroup.chest: 'chest',
  MuscleGroup.back: 'back',
  MuscleGroup.legs: 'legs',
  MuscleGroup.shoulders: 'shoulders',
  MuscleGroup.arms: 'arms',
  MuscleGroup.core: 'core',
  MuscleGroup.fullBody: 'fullBody',
};

const _$ExerciseTypeEnumMap = {
  ExerciseType.compound: 'compound',
  ExerciseType.isolation: 'isolation',
};
