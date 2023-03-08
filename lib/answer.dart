import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            primary: Colors.blue,
            padding: EdgeInsets.all(20),
            foregroundColor: Colors.green),
        onPressed: selectHandler,
      ),
    );
  }
}
