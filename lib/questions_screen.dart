import 'package:flutter/material.dart';
import 'package:quiz/custom_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.selectedAnswer, {super.key});
  final void Function(String) selectedAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  changeQuestion(String answer) {
    widget.selectedAnswer(answer);
    // print();
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final questionsdata = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questionsdata.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: AutofillHints.addressCity),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...questionsdata.getShuffledAnswer().map((val) {
              return AnswerButton(
                  onTap: () => {changeQuestion(val)}, text: val);
            }),
          ],
        ),
      ),
    );
  }
}
