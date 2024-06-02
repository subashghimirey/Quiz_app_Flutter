import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        //to center
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color:const Color.fromARGB(190, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Quiz for flutter developers',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.favorite) ,
              label: const Text(
                'Play Quiz',
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
