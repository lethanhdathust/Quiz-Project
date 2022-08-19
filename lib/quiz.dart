import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerNumber;
  final int questionIndex;
  Quiz({required this.question, required this.answerNumber,required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
            //We want to tell the    question[_questionIndex]['questionText'] is a string
            question[questionIndex]['questionText'] as String),
        ...(question[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          // when dart parse the anonymous function "()=> answerNumber()" Dart will not execute it
          // Dart will create this anonymous function and store it in memory
          // It is executed when onPressed is triggered because it is an anonymous function
          //i forward the address to Class Answer , the address is then bound to the button
          //So when the button is triggered, then dart will execute the anonymous function
          return Answer(() => answerNumber(answer['score']), (answer['text'] as String));
        }).toList(),
      ],
    );
  }
}
