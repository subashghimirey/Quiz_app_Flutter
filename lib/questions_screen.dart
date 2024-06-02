import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const Center(

      child: Column(

        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.access_alarm_sharp, color: Colors.red, size: 50,),
          SizedBox(height: 20,),
          Text('On Dev Mode, Visit in 24 hours', style: TextStyle(fontSize: 25),)
        ],
      ),
    );
  }
}
