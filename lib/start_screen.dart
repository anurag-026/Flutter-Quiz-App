import 'package:flutter/material.dart';
//import 'package:quiz/question_screen.dart';
import 'styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 4, 89, 159),
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 38, 76, 107),
            ),
            child: StyledText('Start Quiz', Colors.white, 23),
          ),
        ],
      ),
    );
  }
}


// ButtonStyle(
//               backgroundColor:
//                   MaterialStatePropertyAll(),
//               elevation: MaterialStatePropertyAll(10),
//               shadowColor: MaterialStatePropertyAll(
//                 
//               ),
//             ),


 //right way: use context in below level tree with MaterialApp
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const queScreen()),
              //);