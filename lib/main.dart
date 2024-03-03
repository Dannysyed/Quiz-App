import 'package:flutter/material.dart';
import 'package:quiz/container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 92, 40, 222),
          Color.fromARGB(31, 90, 62, 146),
          Color.fromARGB(66, 117, 108, 200)
        ]),
      ),
    ),
  );
}
