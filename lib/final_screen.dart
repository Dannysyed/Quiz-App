import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/question_summary.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key, required this.choosenAnswer});
  final List<String> choosenAnswer;
  final currentQuestion = questions;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    // print(choosenAnswer);
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalAnswers = questions.length;
    final summaryData = getSummaryData();
    final totalAnswerUser = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            Text('You answered $totalAnswerUser out of $totalAnswers'),
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
