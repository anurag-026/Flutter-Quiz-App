import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: summary.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: (data['correct-answer'] == data['user-answer'])
                          ? Colors.green
                          : Colors.red,
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    ((data['question-index'] as int) + 1).toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data['question'] as String),
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['user-answer'] as String),
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 16,
                              color: (data['correct-answer'] ==
                                      data['user-answer'])
                                  ? const Color.fromARGB(255, 85, 165, 231)
                                  : Colors.red),
                        ), // Color.fromARGB(255, 205, 140, 216))),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['correct-answer'] as String),
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 11, 204, 17),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
