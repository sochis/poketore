// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  id: json['id'] as String,
  userId: json['userId'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  heightCm: (json['heightCm'] as num?)?.toInt(),
  weightKg: (json['weightKg'] as num?)?.toDouble(),
  goal:
      $enumDecodeNullable(_$UserGoalEnumMap, json['goal']) ??
      UserGoal.hypertrophy,
  experience:
      $enumDecodeNullable(_$UserExperienceEnumMap, json['experience']) ??
      UserExperience.beginner,
  weeklyFrequency: (json['weeklyFrequency'] as num?)?.toInt() ?? 3,
  equipment:
      $enumDecodeNullable(_$UserEquipmentEnumMap, json['equipment']) ??
      UserEquipment.gym,
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'heightCm': instance.heightCm,
      'weightKg': instance.weightKg,
      'goal': _$UserGoalEnumMap[instance.goal]!,
      'experience': _$UserExperienceEnumMap[instance.experience]!,
      'weeklyFrequency': instance.weeklyFrequency,
      'equipment': _$UserEquipmentEnumMap[instance.equipment]!,
    };

const _$UserGoalEnumMap = {
  UserGoal.hypertrophy: 'hypertrophy',
  UserGoal.fatLoss: 'fatLoss',
  UserGoal.maintain: 'maintain',
};

const _$UserExperienceEnumMap = {
  UserExperience.beginner: 'beginner',
  UserExperience.intermediate: 'intermediate',
  UserExperience.advanced: 'advanced',
};

const _$UserEquipmentEnumMap = {
  UserEquipment.gym: 'gym',
  UserEquipment.home: 'home',
  UserEquipment.dumbbellOnly: 'dumbbellOnly',
  UserEquipment.bodyweight: 'bodyweight',
};
