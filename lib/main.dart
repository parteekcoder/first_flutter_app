import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
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
  var questionIndex = 0;
  var total_score = 0;
  var questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'red', 'score': 2},
        {'text': 'Green', 'score': 5},
        {'text': 'yellow', 'score': 6}
      ],
    },
    {
      'questionText': 'What is your favourite Animal?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'red', 'score': 2},
        {'text': 'Green', 'score': 5}
      ],
    },
    {
      'questionText': 'What is your favourite Animal?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'red', 'score': 2},
        {'text': 'Green', 'score': 5}
      ],
    },
  ];
    void _answerQuestion(int score) {
      total_score += score;
      setState(() {
        questionIndex = questionIndex + 1;
      });
    }
  
  void _reset(){
    setState(() {
      
    questionIndex=0;
    total_score=0;
    });
  }
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
      ),
      body: questionIndex < questions.length
          ? Quiz(_answerQuestion, questions, questionIndex)
          : Result(total_score,_reset)
    ));
  }
}
