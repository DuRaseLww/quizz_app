import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz_app/service/media_query/media_query_service.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key});

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: AppMedia(context).height! / 3,
              ),
              Text('Категория: '),
              SizedBox(
                height: 30,
              ),
              Text('Количество правильных ответов: '),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => context.push('/start'),
                child: Text('Вернуться назад'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () => {},
                  child: Text('Сохранить')),
            ],
          ),
        ),
      ),
    );
  }
}
