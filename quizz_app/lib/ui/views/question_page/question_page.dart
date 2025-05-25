import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz_app/models/correct_answers_model/correct_answers_model.dart';
import 'package:quizz_app/models/quiz_model/quiz_model.dart';
import 'package:quizz_app/service/repositories/quiz_repository.dart';
import 'package:quizz_app/ui/buttons/QuestButton.dart';
import '../../../models/answers_model/answers_model.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  static const limitQuestions = 3;
  int counterQuestion = 1;
  int _numberQuestionFromList = 0;
  List<QuizModel> quizModelsList = [];
  List<String?> answersList = [];
  List<String?> correctAnswersList = [];
  Color currentColor = Color(0xFFD6D6D6);
  static const Color correctColor = Colors.green;
  static const Color unCorrectColor = Colors.red;

  String? answerA;
  String? answerB;
  String? answerC;
  String? answerD;
  String? answerE;
  String? answerF;

  String? correctAnswerA;
  String? correctAnswerB;
  String? correctAnswerC;
  String? correctAnswerD;
  String? correctAnswerE;
  String? correctAnswerF;

  GlobalKey<State<ElevatedButton>> buttonKey1 = GlobalKey();
  GlobalKey<State<ElevatedButton>> buttonKey2 = GlobalKey();
  GlobalKey<State<ElevatedButton>> buttonKey3 = GlobalKey();
  GlobalKey<State<ElevatedButton>> buttonKey4 = GlobalKey();
  GlobalKey<State<ElevatedButton>> buttonKey5 = GlobalKey();
  GlobalKey<State<ElevatedButton>> buttonKey6 = GlobalKey();

  void questionNumberUpdate() {
    counterQuestion++;
    _numberQuestionFromList++;
  }

  String? questionUpdate() {
    setState(() {});
    questionNumberUpdate();
    String text = ' ';
    if (_numberQuestionFromList < quizModelsList.length) {
      text = quizModelsList[_numberQuestionFromList].question.toString();
      return text;
    } else {
      counterQuestion = 1;
      _numberQuestionFromList = 0;
      context.push('/result');
    }
    return null;
  }

  Answers? answersFromList() {
    return quizModelsList[_numberQuestionFromList].answers;
  }

  CorrectAnswers? correctAnswersFromList() {
    return quizModelsList[_numberQuestionFromList].correctAnswers;
  }

  List<QuestButton> questButtonsList = [];

  @override
  Widget build(BuildContext context) {
    final String currentCategory = GoRouterState.of(context).extra.toString();
    final questionResponse = QuizRepository().getQuestionsByCategory(
      currentCategory,
      limitQuestions,
    );

    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: questionResponse,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Ошибка: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              quizModelsList = snapshot.data!;

              answerA = answersFromList()?.answerA;
              answerB = answersFromList()?.answerB;
              answerC = answersFromList()?.answerC;
              answerD = answersFromList()?.answerD;
              answerE = answersFromList()?.answerE;
              answerF = answersFromList()?.answerF;

              correctAnswerA = correctAnswersFromList()?.answerACorrect;
              correctAnswerB = correctAnswersFromList()?.answerBCorrect;
              correctAnswerC = correctAnswersFromList()?.answerCCorrect;
              correctAnswerD = correctAnswersFromList()?.answerDCorrect;
              correctAnswerE = correctAnswersFromList()?.answerECorrect;
              correctAnswerF = correctAnswersFromList()?.answerFCorrect;

              answersList = [
                answerA,
                answerB,
                answerC,
                answerD,
                answerE,
                answerF,
              ];

              correctAnswersList = [
                correctAnswerA,
                correctAnswerB,
                correctAnswerC,
                correctAnswerD,
                correctAnswerE,
                correctAnswerF,
              ];



              return Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),

                    Text(currentCategory, style: TextStyle(fontSize: 32)),

                    SizedBox(height: 30),

                    Text(
                      'Вопрос $counterQuestion / ${snapshot.data!.length}',
                      style: TextStyle(fontSize: 24),
                    ),

                    SizedBox(height: 30),

                    Text(
                      quizModelsList[_numberQuestionFromList].question
                          .toString(),
                      style: TextStyle(fontSize: 22),
                    ),

                    SizedBox(height: 30),

                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,

                      itemCount: answersList.length,
                      itemBuilder: (context, index) {
                        return Visibility(
                          visible: answersList[index] == null ? false : true,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(),
                            child: Text(answersList[index] ??= ' '),
                          ),
                        );
                      },
                    ),

                    // ElevatedButton(
                    //   key: buttonKey1,
                    //   onPressed:
                    //       () => {
                    //         setState(() {
                    //           final currentState = buttonKey1.currentState;
                    //           if (currentState != null) {
                    //             // Обработка нажатия первой кнопки
                    //             print('Кнопка 1 нажата');
                    //           }
                    //         }),
                    //       },
                    //   child: Text(answerA ??= ' '),
                    // ),
                    // ElevatedButton(
                    //   key: buttonKey2,
                    //   onPressed: () => {
                    //     setState(() {
                    //       final currentState = buttonKey2.currentState;
                    //       if (currentState != null) {
                    //         // Обработка нажатия первой кнопки
                    //         print('Кнопка 2 нажата');
                    //       }
                    //     }),
                    //   },
                    //   child: Text(answerB ??= ' '),
                    // ),
                    // ElevatedButton(
                    //   key: buttonKey3,
                    //   onPressed: () => {
                    //     setState(() {
                    //       final currentState = buttonKey3.currentState;
                    //       if (currentState != null) {
                    //         // Обработка нажатия первой кнопки
                    //         print('Кнопка 3 нажата');
                    //       }
                    //     }),
                    //   },
                    //   child: Text(answerC ??= ' '),
                    // ),
                    // ElevatedButton(
                    //   key: buttonKey4,
                    //   onPressed: () => {
                    //     setState(() {
                    //       final currentState = buttonKey4.currentState;
                    //       if (currentState != null) {
                    //         // Обработка нажатия первой кнопки
                    //         print('Кнопка 4 нажата');
                    //       }
                    //     }),
                    //   },
                    //   child: Text(answerD ??= ' '),
                    // ),
                    // ElevatedButton(
                    //   key: buttonKey5,
                    //   onPressed: () => {
                    //     setState(() {
                    //       final currentState = buttonKey5.currentState;
                    //       if (currentState != null) {
                    //         // Обработка нажатия первой кнопки
                    //         print('Кнопка 5 нажата');
                    //       }
                    //     }),
                    //   },
                    //   child: Text(answerE ??= ' '),
                    // ),
                    // ElevatedButton(
                    //   key: buttonKey6,
                    //   onPressed: () => {
                    //     setState(() {
                    //       final currentState = buttonKey6.currentState;
                    //       if (currentState != null) {
                    //         // Обработка нажатия первой кнопки
                    //         print('Кнопка 6 нажата');
                    //       }
                    //     }),
                    //   },
                    //   child: Text(answerF ??= ' '),
                    // ),

                    SizedBox(height: 30),

                    ElevatedButton(
                      onPressed: () {
                        questionUpdate();
                      },
                      style: ElevatedButton.styleFrom(),
                      child: Text('updateQuestion'),
                    ),
                  ],
                ),
              );
            } else {
              return Center(child: Text('Нет данных'));
            }
          },
        ),
      ),
    );
  }
}
