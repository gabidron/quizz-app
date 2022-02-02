import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function clickHandler;
  final String correctAnswer;

  Answer(
      {required this.answerText,
      required this.clickHandler,
      required this.correctAnswer});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answerText),
      onPressed: () => clickHandler(correctAnswer == answerText),
    );
  }
}
