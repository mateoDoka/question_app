import 'package:flutter/material.dart';

import 'package:question_app/qustionsBP.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
            opacity: 0.6,
            child: Image.asset('assets/images/quiz-logo.png', width: 300)),
        const SizedBox(height: 80),
        const Text(
          "Learn Flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const QuestionsBP(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"))
      ],
    ));
  }
}
