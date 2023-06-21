import 'package:flutter/material.dart';
import 'answer_btn.dart';
import 'package:quiz/data/question.dart';

// ignore: camel_case_types
class queScreen extends StatefulWidget {
  const queScreen({super.key});

  @override
  State<queScreen> createState() => _queScreenState();
}

// ignore: camel_case_types
class _queScreenState extends State<queScreen> {
  final currentquestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: const TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentquestion.answer.map((answer) {
              return AnswerButton(answer, () {});
            }),
          ],
        ),
      ),
    );
  }
}
