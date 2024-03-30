import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key, required this.choosenAnswer});
  final List<String> choosenAnswer;
  final currentQuestion = questions;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y'),
            const SizedBox(
              height: 30,
            ),
            const Text('You answered x out of y'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
