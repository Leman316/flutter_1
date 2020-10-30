import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override

  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
    );
  }
}
