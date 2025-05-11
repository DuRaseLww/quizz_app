// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Answers {

 String? get answer_a; String? get answer_b; String? get answer_c; String? get answer_d; String? get answer_e; String? get answer_f;
/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswersCopyWith<Answers> get copyWith => _$AnswersCopyWithImpl<Answers>(this as Answers, _$identity);

  /// Serializes this Answers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answers&&(identical(other.answer_a, answer_a) || other.answer_a == answer_a)&&(identical(other.answer_b, answer_b) || other.answer_b == answer_b)&&(identical(other.answer_c, answer_c) || other.answer_c == answer_c)&&(identical(other.answer_d, answer_d) || other.answer_d == answer_d)&&(identical(other.answer_e, answer_e) || other.answer_e == answer_e)&&(identical(other.answer_f, answer_f) || other.answer_f == answer_f));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answer_a,answer_b,answer_c,answer_d,answer_e,answer_f);

@override
String toString() {
  return 'Answers(answer_a: $answer_a, answer_b: $answer_b, answer_c: $answer_c, answer_d: $answer_d, answer_e: $answer_e, answer_f: $answer_f)';
}


}

/// @nodoc
abstract mixin class $AnswersCopyWith<$Res>  {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) _then) = _$AnswersCopyWithImpl;
@useResult
$Res call({
 String? answer_a, String? answer_b, String? answer_c, String? answer_d, String? answer_e, String? answer_f
});




}
/// @nodoc
class _$AnswersCopyWithImpl<$Res>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._self, this._then);

  final Answers _self;
  final $Res Function(Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answer_a = freezed,Object? answer_b = freezed,Object? answer_c = freezed,Object? answer_d = freezed,Object? answer_e = freezed,Object? answer_f = freezed,}) {
  return _then(_self.copyWith(
answer_a: freezed == answer_a ? _self.answer_a : answer_a // ignore: cast_nullable_to_non_nullable
as String?,answer_b: freezed == answer_b ? _self.answer_b : answer_b // ignore: cast_nullable_to_non_nullable
as String?,answer_c: freezed == answer_c ? _self.answer_c : answer_c // ignore: cast_nullable_to_non_nullable
as String?,answer_d: freezed == answer_d ? _self.answer_d : answer_d // ignore: cast_nullable_to_non_nullable
as String?,answer_e: freezed == answer_e ? _self.answer_e : answer_e // ignore: cast_nullable_to_non_nullable
as String?,answer_f: freezed == answer_f ? _self.answer_f : answer_f // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Answers implements Answers {
  const _Answers({required this.answer_a, required this.answer_b, required this.answer_c, required this.answer_d, required this.answer_e, required this.answer_f});
  factory _Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);

@override final  String? answer_a;
@override final  String? answer_b;
@override final  String? answer_c;
@override final  String? answer_d;
@override final  String? answer_e;
@override final  String? answer_f;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswersCopyWith<_Answers> get copyWith => __$AnswersCopyWithImpl<_Answers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answers&&(identical(other.answer_a, answer_a) || other.answer_a == answer_a)&&(identical(other.answer_b, answer_b) || other.answer_b == answer_b)&&(identical(other.answer_c, answer_c) || other.answer_c == answer_c)&&(identical(other.answer_d, answer_d) || other.answer_d == answer_d)&&(identical(other.answer_e, answer_e) || other.answer_e == answer_e)&&(identical(other.answer_f, answer_f) || other.answer_f == answer_f));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answer_a,answer_b,answer_c,answer_d,answer_e,answer_f);

@override
String toString() {
  return 'Answers(answer_a: $answer_a, answer_b: $answer_b, answer_c: $answer_c, answer_d: $answer_d, answer_e: $answer_e, answer_f: $answer_f)';
}


}

/// @nodoc
abstract mixin class _$AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$AnswersCopyWith(_Answers value, $Res Function(_Answers) _then) = __$AnswersCopyWithImpl;
@override @useResult
$Res call({
 String? answer_a, String? answer_b, String? answer_c, String? answer_d, String? answer_e, String? answer_f
});




}
/// @nodoc
class __$AnswersCopyWithImpl<$Res>
    implements _$AnswersCopyWith<$Res> {
  __$AnswersCopyWithImpl(this._self, this._then);

  final _Answers _self;
  final $Res Function(_Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answer_a = freezed,Object? answer_b = freezed,Object? answer_c = freezed,Object? answer_d = freezed,Object? answer_e = freezed,Object? answer_f = freezed,}) {
  return _then(_Answers(
answer_a: freezed == answer_a ? _self.answer_a : answer_a // ignore: cast_nullable_to_non_nullable
as String?,answer_b: freezed == answer_b ? _self.answer_b : answer_b // ignore: cast_nullable_to_non_nullable
as String?,answer_c: freezed == answer_c ? _self.answer_c : answer_c // ignore: cast_nullable_to_non_nullable
as String?,answer_d: freezed == answer_d ? _self.answer_d : answer_d // ignore: cast_nullable_to_non_nullable
as String?,answer_e: freezed == answer_e ? _self.answer_e : answer_e // ignore: cast_nullable_to_non_nullable
as String?,answer_f: freezed == answer_f ? _self.answer_f : answer_f // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
