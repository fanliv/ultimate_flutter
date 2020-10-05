import 'package:ultimate_flutter/question.dart';

class QuizzBrain {
  List<Question> _questionBank = [
    Question("Question 1", false),
    Question("Question 2", true),
    Question("Question 3", true),
    Question("Question 4", true),
    Question("Question 5", true),
    Question("Question 6", true),
    Question("Question 7", true),
    Question("Question 8", true),
    Question("Question 9", true),
    Question("Question 10", true),
  ];

  int _questionNumber = 0;
  void nextQuestion() {
    _questionNumber < _questionBank.length - 1
        ? _questionNumber++
        : print('end');
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  int count() {
    return _questionBank.length;
  }
}
