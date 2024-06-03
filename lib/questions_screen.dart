import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';
import 'package:second_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  var correctAnswer = 0;

  void nextQuestion() {
    setState(() {
      currentQuestionIndex += 1;
      
    });
  }

  @override
  Widget build(context) {

  var currentQuestion = questions[currentQuestionIndex];
    

    // we had created list of questions using QuizQuestion objects

    return SizedBox(
      //This takes as much size as possible, cause i want to take all width
      width: double.infinity,

      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          //in SizedBox() inside the Column we use mainAxisAlignment which provides multiple features to center, end, sapce between, etc.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500, fontFamily: AutofillHints.addressState), 
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),

            //to dynamically render the answers from the list we can use the map function
            //we cannot insert another list inside the Children of column, it only allows the Widgets, hence, we need to convert this list of answers into individual units
            //To convert into individual unit, we can use the ... spread functionality of dart

            ...currentQuestion.shuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onClick: nextQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}
