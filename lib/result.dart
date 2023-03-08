import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int finalResult;
  final VoidCallback reset;
  Result(this.finalResult, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          finalResult.toString(),
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
        ),
        TextButton(onPressed: reset, child: Text('Reset Quiz'))
      ],
    ));
  }
}
