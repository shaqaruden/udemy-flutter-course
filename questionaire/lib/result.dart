import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result({this.score, this.reset});

  String get resultPhrase {
    return score <= 8
        ? 'You are awesome and innocent!'
        : score <= 12
            ? 'Pretty Likeable!'
            : score <= 16
                ? 'You are .... strange?'
                : 'I\'ll expect you on the front page of the page of the new paper O_o';
  }

  MaterialColor get resultColor {
    return score <= 8
        ? Colors.green
        : score <= 12
            ? Colors.blue
            : score <= 16
                ? Colors.orange
                : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
              color: resultColor, fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: reset,
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
