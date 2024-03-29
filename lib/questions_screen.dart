import 'package:flutter/material.dart';
import 'package:quiz/custom_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("quesss"),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(onTap: () {}, text: 'Answer1'),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(onTap: () {}, text: 'Answer2'),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(onTap: () {}, text: 'Answer3')
        ],
      ),
    );
  }
}
