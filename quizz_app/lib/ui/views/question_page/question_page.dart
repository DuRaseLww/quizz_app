import 'package:flutter/material.dart';
import 'package:quizz_app/models/quiz_model/quiz_model.dart';
import 'package:quizz_app/service/repositories/repository.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  final _questionResponse = Repository().getQuestions();

  int i = 1;

  void _incrementQuestionCounter() {
    setState(() {
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: _questionResponse,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                  child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                  child: Text(
                      'Ошибка: ${snapshot.error}'
                  ),
              );
            } else if (snapshot.hasData) {
              List<QuizModel> quizModel = snapshot.data!;
              return Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '${quizModel[0].category}',
                      style: TextStyle(
                        fontSize: 32
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Вопрос',
                    style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                        '${quizModel[0].question}',
                    style: TextStyle(
                      fontSize: 22
                      ),
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
