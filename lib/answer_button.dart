import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onClick});

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 2, 81, 146),
      foregroundColor: Colors.white,
      //we used this for giving border radius to the button
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      //we can use symmetric padding which allows us to give vertical and horizontal padding size
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
    ), onPressed: onClick, child: Text(answerText, textAlign: TextAlign.center,));
  }
}
