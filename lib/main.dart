import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  final QuestionsTexts = const [
    {
      'QuestionText': 'This is question no 1',
      'Answers': [
        {'text': '1A', 'score': 1},
        {'text': '1B', 'score': 2},
        {'text': '1C', 'score': 3},
        {'text': '1D', 'score': 4},
      ],
    },
    {
      'QuestionText': 'This is question no 2',
      'Answers': [
        {'text': '2A', 'score': 1},
        {'text': '2B', 'score': 2},
        {'text': '2C', 'score': 3},
        {'text': '2D', 'score': 4},
      ],
    },
    {
      'QuestionText': 'This is question no 3',
      'Answers': [
        {'text': '3A', 'score': 1},
        {'text': '3B', 'score': 2},
        {'text': '3C', 'score': 3},
        {'text': '3D', 'score': 4},
      ],
    }
  ];
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerChosen(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetState() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: (_questionIndex < QuestionsTexts.length)
            ? quiz(QuestionsTexts, _answerChosen, _questionIndex)
            : result(_totalScore, _resetState),
      ),
    );
  }
}
