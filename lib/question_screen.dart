import 'package:flutter/material.dart';
import './answer_button.dart';
import './data/questions.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.answer.map((answer) {
              return AnswerButton(answer, () {});
            }),
          ],
        ),
      ),
    );
  }
}
