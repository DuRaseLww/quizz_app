import 'package:freezed_annotation/freezed_annotation.dart';

part 'answers_model.freezed.dart';
part 'answers_model.g.dart';

@Freezed()
abstract class Answers with _$Answers {

  const factory Answers({
    required String? answer_a,
    required String? answer_b,
    required String? answer_c,
    required String? answer_d,
    required String? answer_e,
    required String? answer_f,
  }) = _Answers;

  factory Answers.fromJson(Map<String,dynamic> json) => _$AnswersFromJson(json);
}