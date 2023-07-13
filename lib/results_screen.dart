import 'package:flutter/material.dart';
import 'package:question_app/data/questions.dart';
import 'package:question_app/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswer, {super.key});
  final List<String> selectedAnswer;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answer[0],
        'user-answer': selectedAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final correctAnswer = getSummaryData()
        .where((data) => data['correct-answer'] == data['user-answer'])
        .length;
    final answerColor = getSummaryData()
        .where((data) => data['correct-answer'] == data['user-answer']);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 165)
          ]),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You answered $correctAnswer out of 6 questions correctly",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 30,
                ),
                QuestionsSummary(getSummaryData(), answerColor),
                const SizedBox(
                  height: 30,
                ),
                TextButton(onPressed: () {}, child: const Text("Restart Quiz")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
