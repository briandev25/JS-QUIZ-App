import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final Function selectedOption;
  final Map<String, Object> question;
  const Option({@required this.selectedOption, @required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ElevatedButton(
        onPressed: selectedOption,
        child: Text(question["option"]),
      ),
    );
  }
}
