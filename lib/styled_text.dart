import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, this.color, this.size, {super.key});

  final String text;
  final Color color;
  final double size;

  @override
  Widget build(context) {
    return Text(
      text , style: TextStyle(
        color: color, 
        fontSize: size,
        
      ),
    );
  }
}
