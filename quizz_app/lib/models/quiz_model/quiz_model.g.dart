// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => _QuizModel(
  id: (json['id'] as num?)?.toInt(),
  question: json['question'] as String?,
  description: json['description'] as String?,
  answers:
      json['answers'] == null
          ? null
          : Answers.fromJson(json['answers'] as Map<String, dynamic>),
  multipleCorrectAnswers: json['multipleCorrectAnswers'] as String?,
  correctAnswers:
      json['correctAnswers'] == null
          ? null
          : CorrectAnswers.fromJson(
            json['correctAnswers'] as Map<String, dynamic>,
          ),
  correctAnswer: json['correctAnswer'] as String?,
  explanation: json['explanation'] as String?,
  tip: json['tip'] as String?,
  tags:
      (json['tags'] as List<dynamic>)
          .map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
  category: json['category'] as String?,
  difficulty: json['difficulty'] as String?,
);

Map<String, dynamic> _$QuizModelToJson(_QuizModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'description': instance.description,
      'answers': instance.answers,
      'multipleCorrectAnswers': instance.multipleCorrectAnswers,
      'correctAnswers': instance.correctAnswers,
      'correctAnswer': instance.correctAnswer,
      'explanation': instance.explanation,
      'tip': instance.tip,
      'tags': instance.tags,
      'category': instance.category,
      'difficulty': instance.difficulty,
    };
