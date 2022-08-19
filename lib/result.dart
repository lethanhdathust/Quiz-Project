import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  Result(this.resultScore,this.reset);
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = "Normally ";
    } else if (resultScore <= 12) {
      resultText = "good";
    } else if (resultScore <= 16) {
      resultText = 'Well';
    } else {
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
      ),
      FlatButton(onPressed: reset, child: Text("Restart Quiz"), hoverColor: Colors.blue,mouseCursor: MouseCursor.uncontrolled,),
    ]
    
    ));
  }
}
