import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

enum UserGoal { hypertrophy, fatLoss, maintain }

enum UserExperience { beginner, intermediate, advanced }

enum UserEquipment { gym, home, dumbbellOnly, bodyweight }

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
    int? heightCm,
    double? weightKg,
    @Default(UserGoal.hypertrophy) UserGoal goal,
    @Default(UserExperience.beginner) UserExperience experience,
    @Default(3) int weeklyFrequency,
    @Default(UserEquipment.gym) UserEquipment equipment,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
