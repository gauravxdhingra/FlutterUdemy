import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answers(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: RaisedButton(
          color: Colors.pinkAccent[400],
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
