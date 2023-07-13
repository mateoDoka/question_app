class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;

  List<String> shuffledList() {
    final shuffledAnswerList = List.of(answer);
    shuffledAnswerList.shuffle();
    return shuffledAnswerList;
  }
}
