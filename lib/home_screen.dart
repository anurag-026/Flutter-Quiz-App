import 'package:flutter/material.dart';
import 'styled_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.startQuizId, required this.createQuiz});

  final void Function() startQuizId;
  final void Function() createQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            width: 300,
            color: const Color.fromARGB(155, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          StyledText('Learn Flutter the fun way!', Colors.white, 25),
          const SizedBox(
            height: 35,
          ),
          OutlinedButton(
            onPressed: () {
              startQuizId();
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 4, 89, 159),
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 38, 76, 107),
            ),
            child: StyledText('Start Quiz', Colors.white, 23),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: createQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 4, 89, 159),
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 38, 76, 107),
            ),
            child: StyledText('Create Quiz', Colors.white, 23),
          ),
        ],
      ),
    );
  }
}


 //right way: use context in below level tree with MaterialApp
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const queScreen()),
              //);