import 'package:flutter/material.dart';
import './Answers.dart';
import './Questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
      {
        'questionSet': 'What\'s your name?',
        'answerSet': ['Gaurav', 'Rishabh', 'Lakshay', 'Shubham'],
      },
      {
        'questionSet': 'What\'s your age?',
        'answerSet': ['10', '20', '30', '40'],
      },
      {
        'questionSet': 'What\'s your Favourite Color?',
        'answerSet': ['Black', 'Blue', 'Red', 'White'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'Quiz App',
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: <Widget>[
            Questions(
              ques[_questionIndex]['questionSet'],
            ),
            ...(ques[_questionIndex]['answerSet'] as List<String>)
                .map((answer) {
              return Answers(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
