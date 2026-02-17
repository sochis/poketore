// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutItem {

 String get id; DateTime get createdAt; DateTime get updatedAt; DateTime? get deletedAt; String get exerciseId; String get exerciseNameSnapshot; List<WorkoutSet> get sets;
/// Create a copy of WorkoutItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutItemCopyWith<WorkoutItem> get copyWith => _$WorkoutItemCopyWithImpl<WorkoutItem>(this as WorkoutItem, _$identity);

  /// Serializes this WorkoutItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutItem&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.exerciseNameSnapshot, exerciseNameSnapshot) || other.exerciseNameSnapshot == exerciseNameSnapshot)&&const DeepCollectionEquality().equals(other.sets, sets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,deletedAt,exerciseId,exerciseNameSnapshot,const DeepCollectionEquality().hash(sets));

@override
String toString() {
  return 'WorkoutItem(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, exerciseId: $exerciseId, exerciseNameSnapshot: $exerciseNameSnapshot, sets: $sets)';
}


}

/// @nodoc
abstract mixin class $WorkoutItemCopyWith<$Res>  {
  factory $WorkoutItemCopyWith(WorkoutItem value, $Res Function(WorkoutItem) _then) = _$WorkoutItemCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, DateTime? deletedAt, String exerciseId, String exerciseNameSnapshot, List<WorkoutSet> sets
});




}
/// @nodoc
class _$WorkoutItemCopyWithImpl<$Res>
    implements $WorkoutItemCopyWith<$Res> {
  _$WorkoutItemCopyWithImpl(this._self, this._then);

  final WorkoutItem _self;
  final $Res Function(WorkoutItem) _then;

/// Create a copy of WorkoutItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? exerciseId = null,Object? exerciseNameSnapshot = null,Object? sets = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,exerciseNameSnapshot: null == exerciseNameSnapshot ? _self.exerciseNameSnapshot : exerciseNameSnapshot // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as List<WorkoutSet>,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutItem].
extension WorkoutItemPatterns on WorkoutItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutItem value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutItem value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  String exerciseId,  String exerciseNameSnapshot,  List<WorkoutSet> sets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutItem() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.exerciseId,_that.exerciseNameSnapshot,_that.sets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  String exerciseId,  String exerciseNameSnapshot,  List<WorkoutSet> sets)  $default,) {final _that = this;
switch (_that) {
case _WorkoutItem():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.exerciseId,_that.exerciseNameSnapshot,_that.sets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  DateTime? deletedAt,  String exerciseId,  String exerciseNameSnapshot,  List<WorkoutSet> sets)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutItem() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.exerciseId,_that.exerciseNameSnapshot,_that.sets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutItem implements WorkoutItem {
  const _WorkoutItem({required this.id, required this.createdAt, required this.updatedAt, this.deletedAt, required this.exerciseId, required this.exerciseNameSnapshot, final  List<WorkoutSet> sets = const <WorkoutSet>[]}): _sets = sets;
  factory _WorkoutItem.fromJson(Map<String, dynamic> json) => _$WorkoutItemFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? deletedAt;
@override final  String exerciseId;
@override final  String exerciseNameSnapshot;
 final  List<WorkoutSet> _sets;
@override@JsonKey() List<WorkoutSet> get sets {
  if (_sets is EqualUnmodifiableListView) return _sets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sets);
}


/// Create a copy of WorkoutItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutItemCopyWith<_WorkoutItem> get copyWith => __$WorkoutItemCopyWithImpl<_WorkoutItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutItem&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.exerciseNameSnapshot, exerciseNameSnapshot) || other.exerciseNameSnapshot == exerciseNameSnapshot)&&const DeepCollectionEquality().equals(other._sets, _sets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,deletedAt,exerciseId,exerciseNameSnapshot,const DeepCollectionEquality().hash(_sets));

@override
String toString() {
  return 'WorkoutItem(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, exerciseId: $exerciseId, exerciseNameSnapshot: $exerciseNameSnapshot, sets: $sets)';
}


}

/// @nodoc
abstract mixin class _$WorkoutItemCopyWith<$Res> implements $WorkoutItemCopyWith<$Res> {
  factory _$WorkoutItemCopyWith(_WorkoutItem value, $Res Function(_WorkoutItem) _then) = __$WorkoutItemCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, DateTime? deletedAt, String exerciseId, String exerciseNameSnapshot, List<WorkoutSet> sets
});




}
/// @nodoc
class __$WorkoutItemCopyWithImpl<$Res>
    implements _$WorkoutItemCopyWith<$Res> {
  __$WorkoutItemCopyWithImpl(this._self, this._then);

  final _WorkoutItem _self;
  final $Res Function(_WorkoutItem) _then;

/// Create a copy of WorkoutItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? exerciseId = null,Object? exerciseNameSnapshot = null,Object? sets = null,}) {
  return _then(_WorkoutItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,exerciseNameSnapshot: null == exerciseNameSnapshot ? _self.exerciseNameSnapshot : exerciseNameSnapshot // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self._sets : sets // ignore: cast_nullable_to_non_nullable
as List<WorkoutSet>,
  ));
}


}

// dart format on
