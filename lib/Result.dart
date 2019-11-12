import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 12) {
      resultText = 'You are awesome';
    } else if (resultScore >= 8 && resultScore > 4) {
      resultText = 'You\'re great';
    } else {
      resultText = 'Okay, Thanks';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                resultPhrase,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          FlatButton(
            child: Padding(
              padding: const EdgeInsets.all(100),
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
