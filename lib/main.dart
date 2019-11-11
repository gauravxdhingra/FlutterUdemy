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
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < ques.length) {
      print('We have more questons');
    } else
      (print('No more questions'));
  }

  final ques = const [
    {
      'questionSet': 'What\'s your name?',
      'answerSet': ['Gaurav', 'Rishabh', 'Lakshay', 'Shubham'],
    },
    {
      'questionSet': 'What\'s your age?',
      'answerSet': ['10', '20', '30', '40'],
    },
    {
      'questionSet': 'What\'s your favourite color?',
      'answerSet': ['Black', 'Blue', 'Red', 'White'],
    },
  ];

//questions=[] doesn't work if questions is const. try var questions = const[] in upper list.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'Quiz App',
            textAlign: TextAlign.center,
          ),
        ),
        body: _questionIndex < ques.length
            ? Column(
                children: <Widget>[
                  Questions(
                    ques[_questionIndex]['questionSet'],
                  ),
                  ...(ques[_questionIndex]['answerSet'] as List<String>)
                      .map((answer) {
                    return Answers(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
