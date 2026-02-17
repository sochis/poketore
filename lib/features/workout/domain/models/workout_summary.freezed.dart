// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutSummary {

 int get totalSets; int get totalReps; double get totalVolume;
/// Create a copy of WorkoutSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutSummaryCopyWith<WorkoutSummary> get copyWith => _$WorkoutSummaryCopyWithImpl<WorkoutSummary>(this as WorkoutSummary, _$identity);

  /// Serializes this WorkoutSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutSummary&&(identical(other.totalSets, totalSets) || other.totalSets == totalSets)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSets,totalReps,totalVolume);

@override
String toString() {
  return 'WorkoutSummary(totalSets: $totalSets, totalReps: $totalReps, totalVolume: $totalVolume)';
}


}

/// @nodoc
abstract mixin class $WorkoutSummaryCopyWith<$Res>  {
  factory $WorkoutSummaryCopyWith(WorkoutSummary value, $Res Function(WorkoutSummary) _then) = _$WorkoutSummaryCopyWithImpl;
@useResult
$Res call({
 int totalSets, int totalReps, double totalVolume
});




}
/// @nodoc
class _$WorkoutSummaryCopyWithImpl<$Res>
    implements $WorkoutSummaryCopyWith<$Res> {
  _$WorkoutSummaryCopyWithImpl(this._self, this._then);

  final WorkoutSummary _self;
  final $Res Function(WorkoutSummary) _then;

/// Create a copy of WorkoutSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSets = null,Object? totalReps = null,Object? totalVolume = null,}) {
  return _then(_self.copyWith(
totalSets: null == totalSets ? _self.totalSets : totalSets // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutSummary].
extension WorkoutSummaryPatterns on WorkoutSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutSummary value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutSummary value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalSets,  int totalReps,  double totalVolume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutSummary() when $default != null:
return $default(_that.totalSets,_that.totalReps,_that.totalVolume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalSets,  int totalReps,  double totalVolume)  $default,) {final _that = this;
switch (_that) {
case _WorkoutSummary():
return $default(_that.totalSets,_that.totalReps,_that.totalVolume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalSets,  int totalReps,  double totalVolume)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutSummary() when $default != null:
return $default(_that.totalSets,_that.totalReps,_that.totalVolume);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutSummary implements WorkoutSummary {
  const _WorkoutSummary({this.totalSets = 0, this.totalReps = 0, this.totalVolume = 0});
  factory _WorkoutSummary.fromJson(Map<String, dynamic> json) => _$WorkoutSummaryFromJson(json);

@override@JsonKey() final  int totalSets;
@override@JsonKey() final  int totalReps;
@override@JsonKey() final  double totalVolume;

/// Create a copy of WorkoutSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutSummaryCopyWith<_WorkoutSummary> get copyWith => __$WorkoutSummaryCopyWithImpl<_WorkoutSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutSummary&&(identical(other.totalSets, totalSets) || other.totalSets == totalSets)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSets,totalReps,totalVolume);

@override
String toString() {
  return 'WorkoutSummary(totalSets: $totalSets, totalReps: $totalReps, totalVolume: $totalVolume)';
}


}

/// @nodoc
abstract mixin class _$WorkoutSummaryCopyWith<$Res> implements $WorkoutSummaryCopyWith<$Res> {
  factory _$WorkoutSummaryCopyWith(_WorkoutSummary value, $Res Function(_WorkoutSummary) _then) = __$WorkoutSummaryCopyWithImpl;
@override @useResult
$Res call({
 int totalSets, int totalReps, double totalVolume
});




}
/// @nodoc
class __$WorkoutSummaryCopyWithImpl<$Res>
    implements _$WorkoutSummaryCopyWith<$Res> {
  __$WorkoutSummaryCopyWithImpl(this._self, this._then);

  final _WorkoutSummary _self;
  final $Res Function(_WorkoutSummary) _then;

/// Create a copy of WorkoutSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSets = null,Object? totalReps = null,Object? totalVolume = null,}) {
  return _then(_WorkoutSummary(
totalSets: null == totalSets ? _self.totalSets : totalSets // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
