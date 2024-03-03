import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartScreen([
          Color.fromARGB(255, 81, 11, 146),
          Color.fromARGB(204, 81, 3, 142),
          Color.fromARGB(166, 51, 6, 110)
        ]),
      ),
    ),
  );
}
