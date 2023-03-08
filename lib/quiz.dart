import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Quiz(this.answerQuestion, this.questions, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Question((questions[questionIndex]['questionText'] as String)),
          onPressed: null,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((question) {
          return Answer(() => answerQuestion(question['score']),
              question['text'].toString());
        })
      ],
    );
  }
}
