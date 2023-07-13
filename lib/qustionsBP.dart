import 'package:flutter/material.dart';
import 'package:question_app/data/questions.dart';
import 'package:question_app/question_screen.dart';
import 'package:question_app/results_screen.dart';

class QuestionsBP extends StatefulWidget {
  const QuestionsBP({super.key});

  @override
  State<QuestionsBP> createState() {
    return _QuestionsBP();
  }
}

class _QuestionsBP extends State<QuestionsBP> {
  List<String> selectedAnswer = [];
  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ResultScreen(selectedAnswer),
        ),
      );
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 165)
          ])),
          child: QuestionsScreen(chooseAnswer)),
    );
  }
}
