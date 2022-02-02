import 'package:flutter/material.dart';

import 'question.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final String category;
  final int questionIndex;
  final int questionLength;
  final List<String> answers;
  final Function chooseOption;
  final String correctAnswer;
  Quiz({
    required this.questionText,
    required this.category,
    required this.questionIndex,
    required this.questionLength,
    required this.answers,
    required this.chooseOption,
    required this.correctAnswer,
  });
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Question(questionText),
          Column(
            children: [
              Text('Category: ' + category),
              Text('${questionIndex + 1} / $questionLength')
            ],
          )
        ],
      ),
      Answers(
        answers: answers,
        chooseOption: chooseOption,
        correctAnswer: correctAnswer,
      )
    ]);
  }
}
