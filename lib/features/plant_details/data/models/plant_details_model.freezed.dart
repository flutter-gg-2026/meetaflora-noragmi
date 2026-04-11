// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantDetailsModel {

 String get plantInfo;
/// Create a copy of PlantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantDetailsModelCopyWith<PlantDetailsModel> get copyWith => _$PlantDetailsModelCopyWithImpl<PlantDetailsModel>(this as PlantDetailsModel, _$identity);

  /// Serializes this PlantDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantDetailsModel&&(identical(other.plantInfo, plantInfo) || other.plantInfo == plantInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plantInfo);

@override
String toString() {
  return 'PlantDetailsModel(plantInfo: $plantInfo)';
}


}

/// @nodoc
abstract mixin class $PlantDetailsModelCopyWith<$Res>  {
  factory $PlantDetailsModelCopyWith(PlantDetailsModel value, $Res Function(PlantDetailsModel) _then) = _$PlantDetailsModelCopyWithImpl;
@useResult
$Res call({
 String plantInfo
});




}
/// @nodoc
class _$PlantDetailsModelCopyWithImpl<$Res>
    implements $PlantDetailsModelCopyWith<$Res> {
  _$PlantDetailsModelCopyWithImpl(this._self, this._then);

  final PlantDetailsModel _self;
  final $Res Function(PlantDetailsModel) _then;

/// Create a copy of PlantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plantInfo = null,}) {
  return _then(_self.copyWith(
plantInfo: null == plantInfo ? _self.plantInfo : plantInfo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlantDetailsModel].
extension PlantDetailsModelPatterns on PlantDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String plantInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantDetailsModel() when $default != null:
return $default(_that.plantInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String plantInfo)  $default,) {final _that = this;
switch (_that) {
case _PlantDetailsModel():
return $default(_that.plantInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String plantInfo)?  $default,) {final _that = this;
switch (_that) {
case _PlantDetailsModel() when $default != null:
return $default(_that.plantInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantDetailsModel implements PlantDetailsModel {
  const _PlantDetailsModel({required this.plantInfo});
  factory _PlantDetailsModel.fromJson(Map<String, dynamic> json) => _$PlantDetailsModelFromJson(json);

@override final  String plantInfo;

/// Create a copy of PlantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantDetailsModelCopyWith<_PlantDetailsModel> get copyWith => __$PlantDetailsModelCopyWithImpl<_PlantDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantDetailsModel&&(identical(other.plantInfo, plantInfo) || other.plantInfo == plantInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plantInfo);

@override
String toString() {
  return 'PlantDetailsModel(plantInfo: $plantInfo)';
}


}

/// @nodoc
abstract mixin class _$PlantDetailsModelCopyWith<$Res> implements $PlantDetailsModelCopyWith<$Res> {
  factory _$PlantDetailsModelCopyWith(_PlantDetailsModel value, $Res Function(_PlantDetailsModel) _then) = __$PlantDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String plantInfo
});




}
/// @nodoc
class __$PlantDetailsModelCopyWithImpl<$Res>
    implements _$PlantDetailsModelCopyWith<$Res> {
  __$PlantDetailsModelCopyWithImpl(this._self, this._then);

  final _PlantDetailsModel _self;
  final $Res Function(_PlantDetailsModel) _then;

/// Create a copy of PlantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plantInfo = null,}) {
  return _then(_PlantDetailsModel(
plantInfo: null == plantInfo ? _self.plantInfo : plantInfo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
