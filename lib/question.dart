import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  Question({@required this.questions, @required this.selectedQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        questions[selectedQuestion]["question"],
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
