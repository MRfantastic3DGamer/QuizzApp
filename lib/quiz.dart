import 'dart:ffi';

import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class quiz extends StatelessWidget {

final Qindex;
final List<Map<String,Object>> QuestionsTexts;
final Function ansFunction;

quiz( 
  @required this.QuestionsTexts, 
  @required this.ansFunction, 
  @required this.Qindex
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(QuestionsTexts[Qindex]['QuestionText'].toString()),
        ...(QuestionsTexts[Qindex]['Answers'] as List<Map<String,Object>>)
            .map((Ans) {
              return Answer(Ans['text'] as String,() => ansFunction(Ans['score'] as int));
            }).toList(),
      ],
    );
  }
}
