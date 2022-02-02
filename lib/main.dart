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
  int _questionIndex = 0;
  int _score = 0;
  List _questions = questionList;

  void clickHandler(bool correctAnswer) => {
        if (correctAnswer)
          {
            setState(() {
              _score++;
            })
          },
        setState(() {
          _questionIndex++;
        })
      };

  void restart() => {
        setState(() => {_score = 0, _questionIndex = 0})
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              questionText: _questions[_questionIndex]['question'],
              category: _questions[_questionIndex]['category'],
              questionIndex: _questionIndex,
              questionLength: _questions.length,
              answers: _questions[_questionIndex]['answers'],
              chooseOption: clickHandler,
              correctAnswer: _questions[_questionIndex]['correct_answer'],
            )
          : Column(
              children: [
                Text('Score: ' + _score.toString()),
                ElevatedButton(onPressed: restart, child: const Text('reset')),
              ],
            ),
    ));
  }
}
