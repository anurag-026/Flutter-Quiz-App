import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/styled_text.dart';
import 'question_screen.dart';

class CreateQuiz extends StatelessWidget {
  CreateQuiz(this.createQue, {super.key});

  void Function() createQue;
  Widget build(context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        StyledText('Create Quiz ', Colors.white, 25),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 4, 89, 159),
            elevation: 10,
            shadowColor: const Color.fromARGB(255, 38, 76, 107),
          ),
          onPressed: () {
            createQue();
          },
          child: Text('Create Question'),
        ),
      ]),
    );
  }
}
