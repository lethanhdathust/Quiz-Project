import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _question = [
    {
      'questionText': 'What\s your favorite food',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 6},
        {'text': 'green', 'score': 5},
        {'text': 'white', 'score': 1}
      ],
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answer': [
        {'text': 'lion', 'score': 4},
        {'text': 'dog', 'score': 2},
        {'text': 'cat', 'score': 6},
        {'text': 'hourse', 'score': 1}
      ],
    },
    {
      'questionText': 'What\s your favorite girl?',
      'answer': [
        {'text': 'a', 'score': 1},
        {'text': 'b', 'score': 1},
        {'text': 'c', 'score': 1},
        {'text': 'd', 'score': 1}
      ],
    }
  ];
  void _resetQuiz() {
    setState(() {
     _questionIndex = 0;
     _totalScore = 0;
    });

  }

  void answerQuestion() {
    print('Answer chosen!');
  }

  void answerNumber(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_question.length);

    if (_questionIndex < _question.length) {
      print("I have move questions!");
    } else {
      print("No more Questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    //return a MateriaApp class with the argument : home
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _question.length
          ? Quiz(
              question: _question,
              answerNumber: answerNumber,
              questionIndex: _questionIndex)
          : Result(_totalScore,_resetQuiz),
    ));
  }
}
