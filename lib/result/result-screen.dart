import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/question.dart';
import 'package:quiz/result/question_Summary.dart';
import 'package:quiz/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.onRestart});

  final List<String> chosenAnswer;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {  //getter (use function as a attribute)
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question-index': i,
          'question': questions[i].text,
          'correct-answer': questions[i].answer[0],
          'user-answer': chosenAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    final numTotalQuestion = questions.length;
    final numCorrectAnswer = summaryData
        .where(
          (data) => data['correct-answer'] == data['user-answer'],  // arrow function
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'You answered $numCorrectAnswer out of $numTotalQuestion answer correctly',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    color: Color.fromARGB(255, 139, 216, 251),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              label: StyledText('Restart Quiz ', Colors.white, 19),
              icon: const Icon(Icons.refresh),
              style: TextButton.styleFrom(
                iconColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
