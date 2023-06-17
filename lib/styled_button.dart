// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'styled_text.dart';

class StyledButton extends StatelessWidget {
  StyledButton(this.text, this.color, this.size, {super.key});

  final String text;
  Color color;
  double size;
  @override
  Widget build(context) {
    return ElevatedButton(
      
      onPressed: () {
        fun();
      },
      
      style: ElevatedButton.styleFrom(
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 4, 89, 159),
        shadowColor: const Color.fromARGB(255, 38, 76, 107),
      ),
      child: StyledText(text, color, size),
    );
  }
}

void fun() {
  print('true');
}
