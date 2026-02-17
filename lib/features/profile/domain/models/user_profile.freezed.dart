// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {

 String get id; String get userId; DateTime get createdAt; DateTime get updatedAt; DateTime? get deletedAt; int? get heightCm; double? get weightKg; UserGoal get goal; UserExperience get experience; int get weeklyFrequency; UserEquipment get equipment;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.weeklyFrequency, weeklyFrequency) || other.weeklyFrequency == weeklyFrequency)&&(identical(other.equipment, equipment) || other.equipment == equipment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,createdAt,updatedAt,deletedAt,heightCm,weightKg,goal,experience,weeklyFrequency,equipment);

@override
String toString() {
  return 'UserProfile(id: $id, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, heightCm: $heightCm, weightKg: $weightKg, goal: $goal, experience: $experience, weeklyFrequency: $weeklyFrequency, equipment: $equipment)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 String id, String userId, DateTime createdAt, DateTime updatedAt, DateTime? deletedAt, int? heightCm, double? weightKg, UserGoal goal, UserExperience experience, int weeklyFrequency, UserEquipment equipment
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? goal = null,Object? experience = null,Object? weeklyFrequency = null,Object? equipment = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as UserGoal,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as UserExperience,weeklyFrequency: null == weeklyFrequency ? _self.weeklyFrequency : weeklyFrequency // ignore: cast_nullable_to_non_nullable
as int,equipment: null == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as UserEquipment,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  int? heightCm,  double? weightKg,  UserGoal goal,  UserExperience experience,  int weeklyFrequency,  UserEquipment equipment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.userId,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.heightCm,_that.weightKg,_that.goal,_that.experience,_that.weeklyFrequency,_that.equipment);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  int? heightCm,  double? weightKg,  UserGoal goal,  UserExperience experience,  int weeklyFrequency,  UserEquipment equipment)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.id,_that.userId,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.heightCm,_that.weightKg,_that.goal,_that.experience,_that.weeklyFrequency,_that.equipment);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  int? heightCm,  double? weightKg,  UserGoal goal,  UserExperience experience,  int weeklyFrequency,  UserEquipment equipment)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.userId,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.heightCm,_that.weightKg,_that.goal,_that.experience,_that.weeklyFrequency,_that.equipment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile implements UserProfile {
  const _UserProfile({required this.id, required this.userId, required this.createdAt, required this.updatedAt, this.deletedAt, this.heightCm, this.weightKg, this.goal = UserGoal.hypertrophy, this.experience = UserExperience.beginner, this.weeklyFrequency = 3, this.equipment = UserEquipment.gym});
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override final  String id;
@override final  String userId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? deletedAt;
@override final  int? heightCm;
@override final  double? weightKg;
@override@JsonKey() final  UserGoal goal;
@override@JsonKey() final  UserExperience experience;
@override@JsonKey() final  int weeklyFrequency;
@override@JsonKey() final  UserEquipment equipment;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.weeklyFrequency, weeklyFrequency) || other.weeklyFrequency == weeklyFrequency)&&(identical(other.equipment, equipment) || other.equipment == equipment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,createdAt,updatedAt,deletedAt,heightCm,weightKg,goal,experience,weeklyFrequency,equipment);

@override
String toString() {
  return 'UserProfile(id: $id, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, heightCm: $heightCm, weightKg: $weightKg, goal: $goal, experience: $experience, weeklyFrequency: $weeklyFrequency, equipment: $equipment)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, DateTime createdAt, DateTime updatedAt, DateTime? deletedAt, int? heightCm, double? weightKg, UserGoal goal, UserExperience experience, int weeklyFrequency, UserEquipment equipment
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? heightCm = freezed,Object? weightKg = freezed,Object? goal = null,Object? experience = null,Object? weeklyFrequency = null,Object? equipment = null,}) {
  return _then(_UserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,heightCm: freezed == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int?,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as UserGoal,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as UserExperience,weeklyFrequency: null == weeklyFrequency ? _self.weeklyFrequency : weeklyFrequency // ignore: cast_nullable_to_non_nullable
as int,equipment: null == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as UserEquipment,
  ));
}


}

// dart format on
