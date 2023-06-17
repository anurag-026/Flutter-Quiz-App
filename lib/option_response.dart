import 'package:flutter/material.dart';
import 'styled_button.dart';

class option extends StatelessWidget {
  const option(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  StyledButton(text, Colors.white, 25);
  }
}
