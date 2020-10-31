import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {



  final Function answer;
  final int index;
  final List<Map<String,Object>> question;



  Quiz({this.question, this.answer, this.index});


  @override
  Widget build(BuildContext context) {
    print(question[index]);
    return Column(
      children: <Widget>[
        Question(question[index]['question']),
        ...(question[index]['answers'] as List<Map<String,Object>>)
            .map((ans) {
              return Answer(()=> answer(ans['score']), ans['text']);})
            .toList()
      ],
    );
  }
}
