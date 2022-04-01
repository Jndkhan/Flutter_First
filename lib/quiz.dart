import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerquestion;

  Quiz(@required this.questions, @required this.questionIndex,
      @required this.answerquestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(answerquestion, answer);
        }).toList()
      ],
    );
  }
}
