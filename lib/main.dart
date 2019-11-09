import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
      'What\s your name?',
      'What\'s your age?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main Title'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Question'),
            RaisedButton(
              child: Text(ques[0]),
              onPressed: answerQuestion,
              //WHILE USING RAISED BUTTON, ONPRESSED: METHOD WITHOUT PARANTHESES
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Selected'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 Selected');
              },
            ),
          ],
        ),
      ),
    );
  }
}
