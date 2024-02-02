import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.questionData});
  final Map<String, Object> questionData;

  @override
  Widget build(BuildContext context) {
    var isCorrectAns = questionData['correct_ans'] == questionData['user_ans'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAns: isCorrectAns,
            questionIdx: (questionData['question_idx'] as int) + 1),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                (questionData['question'] as String),
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 255, 222, 254),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 150, 198, 241),
                  fontSize: 14,
                ),
                (questionData['correct_ans'] as String),
              ),
              if (!isCorrectAns)
                Text(
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 228, 128, 163),
                    fontSize: 14,
                  ),
                  (questionData['user_ans'] as String),
                ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        )
      ],
    );
  }
}
