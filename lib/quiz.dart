import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/final_screen.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  List<String> answerSelected = [];
  var activeScreen = "Start-Screen";

  void addingAnswer(String answers) {
    answerSelected.add(answers);

    if (answerSelected.length == questions.length) {
      setState(() {
        activeScreen = "Final-Screen";
        // answerSelected = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = "Question-Screen";
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "Start-Screen") {
      screenWidget = StartScreen(switchScreen);
    }
    if (activeScreen == "Final-Screen") {
      screenWidget = FinalScreen(
        choosenAnswer: answerSelected,
      );
    }
    if (activeScreen == "Question-Screen") {
      screenWidget = QuestionsScreen(addingAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 48, 43, 53),
              Color.fromARGB(204, 81, 3, 142),
              Color.fromARGB(166, 51, 6, 110)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
