import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/styled_text.dart';
import 'question_screen.dart';

class StartQuiz extends StatelessWidget {
  StartQuiz(this.startQuestion, {super.key});

  void Function() startQuestion;
  Widget build(context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        StyledText('Enter Quiz Id', Colors.white, 25),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 4, 89, 159),
            elevation: 10,
            shadowColor: const Color.fromARGB(255, 38, 76, 107),
          ),
          onPressed: () {
            startQuestion();
          },
          child: Text('Start'),
        ),
      ]),
    );
  }
}
