import 'package:flutter/material.dart';
import '../models/question.dart';

class QuizQuestionWidget extends StatelessWidget {
  final Question question;

  QuizQuestionWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...question.options.map((option) {
              return RadioListTile<int>(
                title: Text(option),
                value: question.options.indexOf(option),
                groupValue: -1, // Update this to store the selected answer
                onChanged: (value) {
                  // Handle option selection
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
