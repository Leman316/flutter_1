import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';
import './quiz.dart';

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

  static const ques = [
    {
      'question': 'The Color?',
      'answer': ['Red', 'Blue', 'Black'],
    },
    {
      'question': 'The Animal?',
      'answer': ['Rabbit', 'Tiger', 'Bear', 'Lion'],
    },
    {
      'question': 'The Shape?',
      'answer': ['Circle', 'Square', 'Rectangle'],
    },
  ];

  void _answer() {
    if (_quesIndex < ques.length) {
      print("No questions left");
    }

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
            ? Column(
                children: <Widget>[
                  Question(ques[_quesIndex]['question']),
                  ...(ques[_quesIndex]['answer'] as List<String>)
                      .map((e) => Answer(_answer, e))
                      .toList()
                ],
              )
            : Center(
                child: Text('Done'),
              ),
      ),
    );

    throw UnimplementedError();
  }
}
