import 'package:Flutter_app_1/answer.dart';
import 'package:Flutter_app_1/question.dart';
import 'package:Flutter_app_1/quiz.dart';
import 'package:Flutter_app_1/result.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //Convention: Name of StatefulWidget + State
  var _currentQuestion = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      //Trigger build method
      _currentQuestion = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _currentQuestion += 1;
    });
  }

  final _questions = const [
    {
      'text': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 4},
      ]
    },
    {
      'text': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 1},
        {'text': 'Snake', 'score': 8},
        {'text': 'Possum', 'score': 10},
      ]
    },
    {
      'text': 'Who\s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Questionaire'),
        backgroundColor: Colors.blue[700],
      ),
      body: _currentQuestion < _questions.length
          ? Quiz(
              callable: _answerQuestion,
              questions: _questions,
              currentQuestion: _currentQuestion,
            )
          : Result(score: _totalScore, reset: _resetQuiz),
    ));
  }
}
