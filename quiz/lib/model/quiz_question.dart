class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  //shuffle answers
  List<String> getShuffleAnswers() {
    final List<String> answers = [...this.answers];
    answers.shuffle();
    return answers;
  }
}
