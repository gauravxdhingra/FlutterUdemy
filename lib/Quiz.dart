import 'package:flutter/material.dart';
import './Questions.dart';
import './Answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.ques,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(
          ques[questionIndex]['questionSet'],
        ),
        ...(ques[questionIndex]['answerSet'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => answerQuestion(answer['score']), answer['option']);
        }).toList()
      ],
    );
  }
}
