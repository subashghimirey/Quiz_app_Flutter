import 'package:flutter/material.dart';


class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var isCorrect = data['user_answer'] == data['correct_answer'];

            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [

              Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  
                  color: isCorrect
                      ?const Color.fromARGB(255, 54, 195, 131)
                      : const Color.fromARGB(255, 197, 114, 138),
                  borderRadius: BorderRadius.circular(100),
                
                )
                ,
                child: Text(((data['question_index'] as int) + 1).toString(), style:const TextStyle(
                    color: Colors.white,
                  ),),
              ),


              
              //Expanded takes the maximum width of the parent widget here in this case is the Row above it.
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      
                      Text(data['question'].toString(), ),
                      Text(
                        data['correct_answer'].toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 1, 51, 61),
                        ),
                      ),
                      Text(
                        data['user_answer'].toString(),
                        style: const TextStyle(color: Color.fromARGB(255, 252, 252, 252)),
                      ),
                    ],
                  ),
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
