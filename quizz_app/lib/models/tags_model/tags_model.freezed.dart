// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tags {

 String get name;
/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagsCopyWith<Tags> get copyWith => _$TagsCopyWithImpl<Tags>(this as Tags, _$identity);

  /// Serializes this Tags to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tags&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'Tags(name: $name)';
}


}

/// @nodoc
abstract mixin class $TagsCopyWith<$Res>  {
  factory $TagsCopyWith(Tags value, $Res Function(Tags) _then) = _$TagsCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$TagsCopyWithImpl<$Res>
    implements $TagsCopyWith<$Res> {
  _$TagsCopyWithImpl(this._self, this._then);

  final Tags _self;
  final $Res Function(Tags) _then;

/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Tags implements Tags {
  const _Tags({required this.name});
  factory _Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

@override final  String name;

/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagsCopyWith<_Tags> get copyWith => __$TagsCopyWithImpl<_Tags>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tags&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'Tags(name: $name)';
}


}

/// @nodoc
abstract mixin class _$TagsCopyWith<$Res> implements $TagsCopyWith<$Res> {
  factory _$TagsCopyWith(_Tags value, $Res Function(_Tags) _then) = __$TagsCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$TagsCopyWithImpl<$Res>
    implements _$TagsCopyWith<$Res> {
  __$TagsCopyWithImpl(this._self, this._then);

  final _Tags _self;
  final $Res Function(_Tags) _then;

/// Create a copy of Tags
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_Tags(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
