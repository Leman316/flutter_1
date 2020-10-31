import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function reset;
  Result(this.result,this.reset);

  String get resultPhrase {
    var resultText = 'You did it, Score is: $result';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(onPressed: reset, child: Text('Restart')),
      ],
    ));
  }
}
