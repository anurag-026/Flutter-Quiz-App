import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      color: Color.fromARGB(255, 3, 116, 209),
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
          child: const MyHomePage(),
        ),
      ),
    ),
  );
}
