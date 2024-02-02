import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAns, required this.questionIdx});
  final bool isCorrectAns;
  final int questionIdx;
  @override
  Widget build(Object context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAns
              ? const Color.fromARGB(255, 150, 198, 241)
              : const Color.fromARGB(255, 228, 128, 163),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionIdx.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
