import 'package:flutter/material.dart';
import './question.dart';
import './option.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final Function selectedOption;
  Quiz(
      {@required this.questions,
      @required this.selectedQuestion,
      @required this.selectedOption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions: questions, selectedQuestion: selectedQuestion),
        ...(questions[selectedQuestion]["choice"] as List<Map<String, Object>>)
            .map((question) {
          return Option(
              selectedOption: () => selectedOption(question["score"]),
              question: question);
        }),
      ],
    );
  }
}
