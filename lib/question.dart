import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Final variable will not be change in the future
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      // Because container takes the full width of the screen , but the text will only center  itself => we use width:double.infinity to extend the width text == width container == width screen
      width:double.infinity,

      margin: EdgeInsets.all(10),
      child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),);

  }
}
