import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.colors, {super.key});
  final List<Color> colors;
  void onPressed() {
    // ..
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              color: Color.fromARGB(105, 255, 255, 255),
              width: 300,
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Learn Flutter the fun way',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: onPressed,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Take Quiz"),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
