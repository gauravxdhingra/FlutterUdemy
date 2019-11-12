import 'package:flutter/material.dart';
import './Result.dart';
import './Quiz.dart';

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
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _ques.length) {
      print('We have more questons');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _ques = const [
    {
      'questionSet': 'What\'s your name?',
      'answerSet': [
        {'option': 'Gaurav', 'score': 4},
        {'option': 'Rishabh', 'score': 3},
        {'option': 'Lakshay', 'score': 2},
        {'option': 'Shubham', 'score': 1},
      ],
    },
    {
      'questionSet': 'What\'s your age?',
      'answerSet': [
        {'option': '10', 'score': 1},
        {'option': '20', 'score': 2},
        {'option': '30', 'score': 3},
        {'option': '40', 'score': 4},
      ],
    },
    {
      'questionSet': 'What\'s your favourite color?',
      'answerSet': [
        {'option': 'Black', 'score': 4},
        {'option': 'Blue', 'score': 3},
        {'option': 'Red', 'score': 2},
        {'option': 'White', 'score': 1},
      ],
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
        body: _questionIndex < _ques.length
            ? Quiz(
                ques: _ques,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
