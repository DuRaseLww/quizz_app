import 'package:freezed_annotation/freezed_annotation.dart';

part 'correct_answers_model.freezed.dart';
part 'correct_answers_model.g.dart';

@Freezed()
abstract class CorrectAnswers with _$CorrectAnswers {

  const factory CorrectAnswers({
    required String? answer_a_correct,
    required String? answer_b_correct,
    required String? answer_c_correct,
    required String? answer_d_correct,
    required String? answer_e_correct,
    required String? answer_f_correct,
  }) = _CorrectAnswers;

  factory CorrectAnswers.fromJson(Map<String,dynamic> json) => _$CorrectAnswersFromJson(json);
}