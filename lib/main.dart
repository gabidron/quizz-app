import 'package:flutter/material.dart';

import './questionsList.dart';
import 'quiz.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int questionIndex = 0;
  int score = 0;
  List questions = questionList;

  void clickHandler(bool correctAnswer) => {
        if (correctAnswer)
          {
            setState(() {
              score++;
            })
          },
        setState(() {
          questionIndex++;
        })
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quiz App'),
          ),
          body: (questionIndex < questions.length)
              ?
              // ? Column(
              //     children: [
              //       Question(questions[questionIndex]['question']),
              //       Answers(questions[questionIndex]['answers'], clickHandler)
              //     ],
              //   )
              Quiz(
                  questionText: questions[questionIndex]['question'],
                  category: questions[questionIndex]['category'],
                  questionIndex: questionIndex,
                  questionLength: questions.length,
                  answers: questions[questionIndex]['answers'],
                  chooseOption: clickHandler,
                  correctAnswer: questions[questionIndex]['correct_answer'],
                )
              : Text(score.toString())),
    );
  }
}
