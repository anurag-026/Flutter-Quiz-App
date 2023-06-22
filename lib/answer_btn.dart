import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.onTap, {super.key});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.only(left: 2, right: 2, top: 5, bottom: 6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 3),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 142, 166, 214),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
