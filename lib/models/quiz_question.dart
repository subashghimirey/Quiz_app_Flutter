class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffledAnswers() {

    //List.of function of dart can be used to make copy of existing List
    final shuffledList = List.of(answers);

    //shuffle function rearranges the order of list items in memory but doesnot change the values, hence doesnot violate the final 
    shuffledList.shuffle();
    return shuffledList;
  }
}
