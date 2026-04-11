// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discovery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiscoveryModel {

 String get name; String get imagePath;
/// Create a copy of DiscoveryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscoveryModelCopyWith<DiscoveryModel> get copyWith => _$DiscoveryModelCopyWithImpl<DiscoveryModel>(this as DiscoveryModel, _$identity);

  /// Serializes this DiscoveryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscoveryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,imagePath);

@override
String toString() {
  return 'DiscoveryModel(name: $name, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $DiscoveryModelCopyWith<$Res>  {
  factory $DiscoveryModelCopyWith(DiscoveryModel value, $Res Function(DiscoveryModel) _then) = _$DiscoveryModelCopyWithImpl;
@useResult
$Res call({
 String name, String imagePath
});




}
/// @nodoc
class _$DiscoveryModelCopyWithImpl<$Res>
    implements $DiscoveryModelCopyWith<$Res> {
  _$DiscoveryModelCopyWithImpl(this._self, this._then);

  final DiscoveryModel _self;
  final $Res Function(DiscoveryModel) _then;

/// Create a copy of DiscoveryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? imagePath = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DiscoveryModel].
extension DiscoveryModelPatterns on DiscoveryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscoveryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscoveryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscoveryModel value)  $default,){
final _that = this;
switch (_that) {
case _DiscoveryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscoveryModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiscoveryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscoveryModel() when $default != null:
return $default(_that.name,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String imagePath)  $default,) {final _that = this;
switch (_that) {
case _DiscoveryModel():
return $default(_that.name,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String imagePath)?  $default,) {final _that = this;
switch (_that) {
case _DiscoveryModel() when $default != null:
return $default(_that.name,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiscoveryModel implements DiscoveryModel {
  const _DiscoveryModel({required this.name, required this.imagePath});
  factory _DiscoveryModel.fromJson(Map<String, dynamic> json) => _$DiscoveryModelFromJson(json);

@override final  String name;
@override final  String imagePath;

/// Create a copy of DiscoveryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscoveryModelCopyWith<_DiscoveryModel> get copyWith => __$DiscoveryModelCopyWithImpl<_DiscoveryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscoveryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscoveryModel&&(identical(other.name, name) || other.name == name)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,imagePath);

@override
String toString() {
  return 'DiscoveryModel(name: $name, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$DiscoveryModelCopyWith<$Res> implements $DiscoveryModelCopyWith<$Res> {
  factory _$DiscoveryModelCopyWith(_DiscoveryModel value, $Res Function(_DiscoveryModel) _then) = __$DiscoveryModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String imagePath
});




}
/// @nodoc
class __$DiscoveryModelCopyWithImpl<$Res>
    implements _$DiscoveryModelCopyWith<$Res> {
  __$DiscoveryModelCopyWithImpl(this._self, this._then);

  final _DiscoveryModel _self;
  final $Res Function(_DiscoveryModel) _then;

/// Create a copy of DiscoveryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? imagePath = null,}) {
  return _then(_DiscoveryModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
