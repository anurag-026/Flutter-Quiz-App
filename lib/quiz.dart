// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'question_screen.dart';
import 'package:quiz/data/question.dart';
import 'package:quiz/result/result-screen.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  final List<String> storedAnswer = [];

  String activeScreen = 'start-screen';

  // @override

  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(SwitchScreen);
  // }

  void SwitchScreen() {
    setState(() {
      activeScreen = 'que-screen';
    });
  }

  void chooseAnswer(String answer) {
    storedAnswer.add(answer);

    if (storedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void  onRestart() {
    setState(() {
      activeScreen = 'que-screen';
      storedAnswer.clear();
    });
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(SwitchScreen)
    //     : queScreen(
    //         onSelectAnswer: chooseAnswer,
    //       );

    Widget screenWidget = StartScreen(SwitchScreen);

    if (activeScreen == 'que-screen') {
      screenWidget = queScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswer: storedAnswer,
        onRestart: onRestart,
      );
    }

    return MaterialApp(
      color: const Color.fromARGB(255, 3, 116, 209),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 89, 168, 232),
                Color.fromARGB(255, 7, 7, 7),
                Color.fromARGB(255, 5, 69, 122)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
