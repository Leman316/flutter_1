import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {



  final Function answer;
  final int index;
  final List<Map<String,Object>> question;



  Quiz({this.questions, this.answer, this.index});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[index]['question']),
        ...(question[index]['answer'] as List<String>)
            .map((e) => Answer(answer, e))
            .toList()
      ],
    );
  }
}
