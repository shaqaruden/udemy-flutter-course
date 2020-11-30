import 'package:Flutter_app_1/answer.dart';
import 'package:Flutter_app_1/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final Function callable;
  final currentQuestion;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.callable,
    @required this.questions,
    @required this.currentQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[currentQuestion]['text']),
        ...(questions[currentQuestion]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => callable(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
