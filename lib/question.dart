class Question {
  String questionText;
  bool questionAnswer;

  // format according to README.md
  // Instead of using constructor like before,
  // we will use the syntax sugar Dart provides
  // This will automatically assign value to properties.
  // And of course, if you want to have label name, {} to the rescue.
  // However, we are formatting from README.md
  Question(this.questionText, this.questionAnswer);
}
