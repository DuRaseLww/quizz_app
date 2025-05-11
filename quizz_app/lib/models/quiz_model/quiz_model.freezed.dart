// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizModel {

 int? get id; String? get question; String? get description; Answers? get answers; String? get multipleCorrectAnswers; CorrectAnswers? get correctAnswers; String? get correctAnswer; String? get explanation; String? get tip; List<Tags> get tags; String? get category; String? get difficulty;
/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizModelCopyWith<QuizModel> get copyWith => _$QuizModelCopyWithImpl<QuizModel>(this as QuizModel, _$identity);

  /// Serializes this QuizModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.tip, tip) || other.tip == tip)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,correctAnswer,explanation,tip,const DeepCollectionEquality().hash(tags),category,difficulty);

@override
String toString() {
  return 'QuizModel(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, correctAnswer: $correctAnswer, explanation: $explanation, tip: $tip, tags: $tags, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $QuizModelCopyWith<$Res>  {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) _then) = _$QuizModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? question, String? description, Answers? answers, String? multipleCorrectAnswers, CorrectAnswers? correctAnswers, String? correctAnswer, String? explanation, String? tip, List<Tags> tags, String? category, String? difficulty
});


$AnswersCopyWith<$Res>? get answers;$CorrectAnswersCopyWith<$Res>? get correctAnswers;

}
/// @nodoc
class _$QuizModelCopyWithImpl<$Res>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._self, this._then);

  final QuizModel _self;
  final $Res Function(QuizModel) _then;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? question = freezed,Object? description = freezed,Object? answers = freezed,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = freezed,Object? correctAnswer = freezed,Object? explanation = freezed,Object? tip = freezed,Object? tags = null,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers?,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: freezed == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers?,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,tip: freezed == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tags>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res>? get answers {
    if (_self.answers == null) {
    return null;
  }

  return $AnswersCopyWith<$Res>(_self.answers!, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res>? get correctAnswers {
    if (_self.correctAnswers == null) {
    return null;
  }

  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers!, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _QuizModel implements QuizModel {
  const _QuizModel({required this.id, required this.question, required this.description, required this.answers, required this.multipleCorrectAnswers, required this.correctAnswers, required this.correctAnswer, required this.explanation, required this.tip, required final  List<Tags> tags, required this.category, required this.difficulty}): _tags = tags;
  factory _QuizModel.fromJson(Map<String, dynamic> json) => _$QuizModelFromJson(json);

@override final  int? id;
@override final  String? question;
@override final  String? description;
@override final  Answers? answers;
@override final  String? multipleCorrectAnswers;
@override final  CorrectAnswers? correctAnswers;
@override final  String? correctAnswer;
@override final  String? explanation;
@override final  String? tip;
 final  List<Tags> _tags;
@override List<Tags> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String? category;
@override final  String? difficulty;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizModelCopyWith<_QuizModel> get copyWith => __$QuizModelCopyWithImpl<_QuizModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.tip, tip) || other.tip == tip)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,correctAnswer,explanation,tip,const DeepCollectionEquality().hash(_tags),category,difficulty);

@override
String toString() {
  return 'QuizModel(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, correctAnswer: $correctAnswer, explanation: $explanation, tip: $tip, tags: $tags, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$QuizModelCopyWith<$Res> implements $QuizModelCopyWith<$Res> {
  factory _$QuizModelCopyWith(_QuizModel value, $Res Function(_QuizModel) _then) = __$QuizModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? question, String? description, Answers? answers, String? multipleCorrectAnswers, CorrectAnswers? correctAnswers, String? correctAnswer, String? explanation, String? tip, List<Tags> tags, String? category, String? difficulty
});


@override $AnswersCopyWith<$Res>? get answers;@override $CorrectAnswersCopyWith<$Res>? get correctAnswers;

}
/// @nodoc
class __$QuizModelCopyWithImpl<$Res>
    implements _$QuizModelCopyWith<$Res> {
  __$QuizModelCopyWithImpl(this._self, this._then);

  final _QuizModel _self;
  final $Res Function(_QuizModel) _then;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? question = freezed,Object? description = freezed,Object? answers = freezed,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = freezed,Object? correctAnswer = freezed,Object? explanation = freezed,Object? tip = freezed,Object? tags = null,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_QuizModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers?,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: freezed == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers?,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,tip: freezed == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tags>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res>? get answers {
    if (_self.answers == null) {
    return null;
  }

  return $AnswersCopyWith<$Res>(_self.answers!, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res>? get correctAnswers {
    if (_self.correctAnswers == null) {
    return null;
  }

  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers!, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}

// dart format on
