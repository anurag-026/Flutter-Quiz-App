import 'package:flutter/material.dart';
//import 'option_response.dart';
//import 'question.dart';

class queScreen extends StatefulWidget {
  const queScreen({super.key});

  @override
  State<queScreen> createState() => _queScreenState();
}

class _queScreenState extends State<queScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Question 1'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 1'),
          ),
        ],
      ),
    );
  }
}
