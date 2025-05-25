import 'package:freezed_annotation/freezed_annotation.dart';

part 'answers_model.freezed.dart';
part 'answers_model.g.dart';

@Freezed()
abstract class Answers with _$Answers {

  const factory Answers({
    @JsonKey(name: 'answer_a')
    required String? answerA,
    @JsonKey(name: 'answer_b')
    required String? answerB,
    @JsonKey(name: 'answer_c')
    required String? answerC,
    @JsonKey(name: 'answer_d')
    required String? answerD,
    @JsonKey(name: 'answer_e')
    required String? answerE,
    @JsonKey(name: 'answer_f')
    required String? answerF,
  }) = _Answers;

  factory Answers.fromJson(Map<String,dynamic> json) => _$AnswersFromJson(json);
}