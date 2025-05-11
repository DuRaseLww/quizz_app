// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correct_answers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorrectAnswers {

 String? get answer_a_correct; String? get answer_b_correct; String? get answer_c_correct; String? get answer_d_correct; String? get answer_e_correct; String? get answer_f_correct;
/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<CorrectAnswers> get copyWith => _$CorrectAnswersCopyWithImpl<CorrectAnswers>(this as CorrectAnswers, _$identity);

  /// Serializes this CorrectAnswers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectAnswers&&(identical(other.answer_a_correct, answer_a_correct) || other.answer_a_correct == answer_a_correct)&&(identical(other.answer_b_correct, answer_b_correct) || other.answer_b_correct == answer_b_correct)&&(identical(other.answer_c_correct, answer_c_correct) || other.answer_c_correct == answer_c_correct)&&(identical(other.answer_d_correct, answer_d_correct) || other.answer_d_correct == answer_d_correct)&&(identical(other.answer_e_correct, answer_e_correct) || other.answer_e_correct == answer_e_correct)&&(identical(other.answer_f_correct, answer_f_correct) || other.answer_f_correct == answer_f_correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answer_a_correct,answer_b_correct,answer_c_correct,answer_d_correct,answer_e_correct,answer_f_correct);

@override
String toString() {
  return 'CorrectAnswers(answer_a_correct: $answer_a_correct, answer_b_correct: $answer_b_correct, answer_c_correct: $answer_c_correct, answer_d_correct: $answer_d_correct, answer_e_correct: $answer_e_correct, answer_f_correct: $answer_f_correct)';
}


}

/// @nodoc
abstract mixin class $CorrectAnswersCopyWith<$Res>  {
  factory $CorrectAnswersCopyWith(CorrectAnswers value, $Res Function(CorrectAnswers) _then) = _$CorrectAnswersCopyWithImpl;
@useResult
$Res call({
 String? answer_a_correct, String? answer_b_correct, String? answer_c_correct, String? answer_d_correct, String? answer_e_correct, String? answer_f_correct
});




}
/// @nodoc
class _$CorrectAnswersCopyWithImpl<$Res>
    implements $CorrectAnswersCopyWith<$Res> {
  _$CorrectAnswersCopyWithImpl(this._self, this._then);

  final CorrectAnswers _self;
  final $Res Function(CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answer_a_correct = freezed,Object? answer_b_correct = freezed,Object? answer_c_correct = freezed,Object? answer_d_correct = freezed,Object? answer_e_correct = freezed,Object? answer_f_correct = freezed,}) {
  return _then(_self.copyWith(
answer_a_correct: freezed == answer_a_correct ? _self.answer_a_correct : answer_a_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_b_correct: freezed == answer_b_correct ? _self.answer_b_correct : answer_b_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_c_correct: freezed == answer_c_correct ? _self.answer_c_correct : answer_c_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_d_correct: freezed == answer_d_correct ? _self.answer_d_correct : answer_d_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_e_correct: freezed == answer_e_correct ? _self.answer_e_correct : answer_e_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_f_correct: freezed == answer_f_correct ? _self.answer_f_correct : answer_f_correct // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CorrectAnswers implements CorrectAnswers {
  const _CorrectAnswers({required this.answer_a_correct, required this.answer_b_correct, required this.answer_c_correct, required this.answer_d_correct, required this.answer_e_correct, required this.answer_f_correct});
  factory _CorrectAnswers.fromJson(Map<String, dynamic> json) => _$CorrectAnswersFromJson(json);

@override final  String? answer_a_correct;
@override final  String? answer_b_correct;
@override final  String? answer_c_correct;
@override final  String? answer_d_correct;
@override final  String? answer_e_correct;
@override final  String? answer_f_correct;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectAnswersCopyWith<_CorrectAnswers> get copyWith => __$CorrectAnswersCopyWithImpl<_CorrectAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrectAnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectAnswers&&(identical(other.answer_a_correct, answer_a_correct) || other.answer_a_correct == answer_a_correct)&&(identical(other.answer_b_correct, answer_b_correct) || other.answer_b_correct == answer_b_correct)&&(identical(other.answer_c_correct, answer_c_correct) || other.answer_c_correct == answer_c_correct)&&(identical(other.answer_d_correct, answer_d_correct) || other.answer_d_correct == answer_d_correct)&&(identical(other.answer_e_correct, answer_e_correct) || other.answer_e_correct == answer_e_correct)&&(identical(other.answer_f_correct, answer_f_correct) || other.answer_f_correct == answer_f_correct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answer_a_correct,answer_b_correct,answer_c_correct,answer_d_correct,answer_e_correct,answer_f_correct);

@override
String toString() {
  return 'CorrectAnswers(answer_a_correct: $answer_a_correct, answer_b_correct: $answer_b_correct, answer_c_correct: $answer_c_correct, answer_d_correct: $answer_d_correct, answer_e_correct: $answer_e_correct, answer_f_correct: $answer_f_correct)';
}


}

/// @nodoc
abstract mixin class _$CorrectAnswersCopyWith<$Res> implements $CorrectAnswersCopyWith<$Res> {
  factory _$CorrectAnswersCopyWith(_CorrectAnswers value, $Res Function(_CorrectAnswers) _then) = __$CorrectAnswersCopyWithImpl;
@override @useResult
$Res call({
 String? answer_a_correct, String? answer_b_correct, String? answer_c_correct, String? answer_d_correct, String? answer_e_correct, String? answer_f_correct
});




}
/// @nodoc
class __$CorrectAnswersCopyWithImpl<$Res>
    implements _$CorrectAnswersCopyWith<$Res> {
  __$CorrectAnswersCopyWithImpl(this._self, this._then);

  final _CorrectAnswers _self;
  final $Res Function(_CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answer_a_correct = freezed,Object? answer_b_correct = freezed,Object? answer_c_correct = freezed,Object? answer_d_correct = freezed,Object? answer_e_correct = freezed,Object? answer_f_correct = freezed,}) {
  return _then(_CorrectAnswers(
answer_a_correct: freezed == answer_a_correct ? _self.answer_a_correct : answer_a_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_b_correct: freezed == answer_b_correct ? _self.answer_b_correct : answer_b_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_c_correct: freezed == answer_c_correct ? _self.answer_c_correct : answer_c_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_d_correct: freezed == answer_d_correct ? _self.answer_d_correct : answer_d_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_e_correct: freezed == answer_e_correct ? _self.answer_e_correct : answer_e_correct // ignore: cast_nullable_to_non_nullable
as String?,answer_f_correct: freezed == answer_f_correct ? _self.answer_f_correct : answer_f_correct // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
