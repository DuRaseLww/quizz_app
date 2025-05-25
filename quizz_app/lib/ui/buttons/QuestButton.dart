import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestButton extends StatefulWidget {
  const QuestButton({super.key});

  @override
  State<QuestButton> createState() => _QuestButtonState();
}

class _QuestButtonState extends State<QuestButton> {
  Color buttonColor = Colors.white30;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          buttonColor = Colors.red;
        });
      },
      child: Text('Some text'),
      style: ElevatedButton.styleFrom(
        //Здесь указывается, что для цвета нужно взять переменную
        backgroundColor: buttonColor,
      ),
    );
  }
}
