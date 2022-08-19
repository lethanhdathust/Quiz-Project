import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String answerText;
  Answer(this.selectedHandler,this.answerText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selectedHandler,
        textColor: Colors.white,
      ),
    );
  }
}
