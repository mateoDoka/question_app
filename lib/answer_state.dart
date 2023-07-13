import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class AnswerState extends StatefulWidget {
  AnswerState(this.data, {super.key});
  Map<String, Object> data;

  @override
  State<AnswerState> createState() => _AnswerStateState();
}

class _AnswerStateState extends State<AnswerState> {
  retrunColor() {
    if (widget.data['correct-answer'] != widget.data['user-answer']) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(2),
          backgroundColor: retrunColor()),
      child: Text(
        ((widget.data['question-index'] as int) + 1).toString(),
        selectionColor: Colors.black,
      ),
    );
  }
}
