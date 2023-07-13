import 'package:flutter/material.dart';
import 'package:question_app/answer_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:question_app/correct_answer.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, this.answerColor, {super.key});
  final List<Map<String, Object>> summaryData;
  final Iterable<Map<String, Object>> answerColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  AnswerState(data),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['question'] as String,
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['correct-answer'] as String,
                            style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 0, 255, 60),
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        CorrectAnswer(data),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
