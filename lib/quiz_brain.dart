import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  // when users have answered all the question, they have 2 choices:
  // 1. Restart
  // 2. Close the alert and watch their points
  //
  // For the second scenario, user may click the True/False button
  // again, then, new check/close icon will be added to the scoreKeeper
  // Therefore, to prevent such thing from happening, we will turn
  // the below flag to `true` when user have reached the last question.
  // If the flag is `true`, scoreKeeper won't add new icon
  // If user hit `restart`, this flag will be set back to `false`.
  bool _haveAnswerAll = false;

  // increase only when user get the correct answer.
  int points = 0;

  // add the underscore before properties to make it private
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // next question if there is question to display
  // if reaching the last question, stay still
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  // return true if user answer the last question
  bool isFinished() {
    return _questionNumber == _questionBank.length - 1;
  }

  void resetQuestion() {
    _questionNumber = 0;
    setHaveAnswerAll(false);
    points = 0;
  }

  void setHaveAnswerAll(bool state) {
    _haveAnswerAll = state;
  }

  bool getHaveAnswerAll() {
    return _haveAnswerAll;
  }
}
