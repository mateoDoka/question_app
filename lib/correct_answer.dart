import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CorrectAnswer extends StatefulWidget {
  CorrectAnswer(this.data, {super.key});
  Map<String, Object> data;

  @override
  State<CorrectAnswer> createState() => _CorrectAnswer();
}

class _CorrectAnswer extends State<CorrectAnswer> {
  retunColor() {
    if (widget.data['correct-answer'] != widget.data['user-answer']) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(widget.data['correct-answer'] as String,
        style: GoogleFonts.lato(
            color: retunColor(), fontSize: 12, fontWeight: FontWeight.bold));
  }
}
