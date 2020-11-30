import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String text;

  Answer(this.handler, this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue[700],
        child: Text(text),
        onPressed: handler,
      ),
    );
  }
}
