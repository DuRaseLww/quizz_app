import 'package:freezed_annotation/freezed_annotation.dart';

part 'correct_answers_model.freezed.dart';
part 'correct_answers_model.g.dart';

@Freezed()
abstract class CorrectAnswers with _$CorrectAnswers {

  const factory CorrectAnswers({
    @JsonKey(name: 'answer_a_correct')
    required String? answerACorrect,
    @JsonKey(name: 'answer_b_correct')
    required String? answerBCorrect,
    @JsonKey(name: 'answer_c_correct')
    required String? answerCCorrect,
    @JsonKey(name: 'answer_d_correct')
    required String? answerDCorrect,
    @JsonKey(name: 'answer_e_correct')
    required String? answerECorrect,
    @JsonKey(name: 'answer_f_correct')
    required String? answerFCorrect,
  }) = _CorrectAnswers;

  factory CorrectAnswers.fromJson(Map<String,dynamic> json) => _$CorrectAnswersFromJson(json);
}