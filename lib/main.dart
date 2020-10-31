import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();

    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;
  int _totalscore = 0;

  static const ques = [
    {
      'question': 'The Color?',
      'answers': [
        {'text': 'Black', 'score': 6},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'question': 'The Animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Dog', 'score': 1},
        {'text': 'Fox', 'score': 3},
      ],
    },
    {
      'question': 'The Shape?',
      'answers': [
        {'text': 'Rectangle', 'score': 2},
        {'text': 'Square', 'score': 4},
        {'text': 'Circle', 'score': 8},
      ],
    },
  ];

  void _reset(){
    setState(() {
      _quesIndex=0;
      _totalscore=0;
    });

  }

  void _answer(int score) {
    if (_quesIndex < ques.length) {
      print("No questions left");
    }

    _totalscore += score;
    print(_totalscore);

    setState(() {
      _quesIndex = _quesIndex + 1;
    });

    print(_quesIndex);
    // print('Answer');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: _quesIndex < ques.length
            ? Quiz(
                question: ques,
                answer: _answer,
                index: _quesIndex,
              )
            : Result(_totalscore,_reset),
      ),
    );

    throw UnimplementedError();
  }
}
