import 'package:flutter/material.dart';

import 'answer.dart';

class Answers extends StatelessWidget {
  final List<String> answers;
  final Function chooseOption;
  final String correctAnswer;

  Answers({
    required this.answers,
    required this.chooseOption,
    required this.correctAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          ...(answers).map((answer) {
            return Answer(
              answerText: answer,
              clickHandler: chooseOption,
              correctAnswer: correctAnswer,
            );
          }).toList()
        ],
      ),
    );
  }
}
