import 'package:flutter/material.dart';


class Answer extends StatelessWidget {


  final Function selector;
  final String answerText;
  Answer(this.selector,this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      child:RaisedButton(
        child: Text(answerText),
        onPressed: selector,
        textColor: Colors.white,
        color: Colors.blue,
      ),
      width: double.infinity,
    );
  }
}
