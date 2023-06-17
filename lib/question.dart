import 'package:flutter/material.dart';
import 'styled_text.dart';

class question extends StatelessWidget {
  const question(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return StyledText(text, Colors.white, 28);
  }
}
