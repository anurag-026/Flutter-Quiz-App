import 'package:flutter/material.dart';
import 'option_response.dart';
import 'question.dart';

class queScreen extends StatefulWidget {
  const queScreen({super.key});

  @override
  State<queScreen> createState() => _queScreenState();
}

class _queScreenState extends State<queScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            question('What is your name ? '),
            SizedBox(
              height: 40,
            ),
            option('Anurag'),
            option('Aditya'),
            option('Shubham'),
            option('Abhisek'),
          ],
        ),
      ),
    );
  }
}
