import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app/models/answers_model/answers_model.dart';
import 'package:quizz_app/models/correct_answers_model/correct_answers_model.dart';
import 'package:quizz_app/models/tags_model/tags_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@Freezed()
abstract class QuizModel with _$QuizModel {

  const factory QuizModel({
    required int? id,
    required String? question,
    required String? description,
    required Answers? answers,
    required String? multipleCorrectAnswers,
    required CorrectAnswers? correctAnswers,
    required String? correctAnswer,
    required String? explanation,
    required String? tip,
    required List<Tags> tags,
    required String? category,
    required String? difficulty,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String,dynamic> json) => _$QuizModelFromJson(json);
}
