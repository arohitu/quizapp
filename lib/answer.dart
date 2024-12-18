import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Set the background color of the button here
        ),
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white), // Set the text color of the button here
        ),
        onPressed: () => selectHandler(),
      ),
    );
  }
}