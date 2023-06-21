import 'package:flutter/material.dart';
import 'answer_btn.dart';
import 'package:quiz/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class queScreen extends StatefulWidget {
  const queScreen({super.key});

  @override
  State<queScreen> createState() => _queScreenState();
}

// ignore: camel_case_types
class _queScreenState extends State<queScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      //if (currentQuestionIndex >= 13) return;
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentquestion.getShuffledAnswer().map((answer) {
              return AnswerButton(answer, answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
