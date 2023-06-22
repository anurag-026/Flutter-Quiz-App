// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'answer_btn.dart';
import 'package:quiz/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class queScreen extends StatefulWidget {
  const queScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<queScreen> createState() => _queScreenState();
}

class _queScreenState extends State<queScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String storedAnswer) {
    widget.onSelectAnswer(storedAnswer);

    setState(() {
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
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 127, 204, 239),
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            ...currentquestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answer,
                () {
                  answerQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
