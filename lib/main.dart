import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'White', 'score': 1},
        {'text': 'Green', 'score': 3},
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 1},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Snake', 'score': 5},
        {'text': 'Rabbit', 'score': 10},
      ],
    },
    {
      'question': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Ido', 'score': 100},
        {'text': 'Roee', 'score': 1},
        {'text': 'Sharon', 'score': 1},
        {'text': 'Din', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
