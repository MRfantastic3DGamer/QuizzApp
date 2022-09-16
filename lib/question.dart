import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String Q_Text;
  Question(this.Q_Text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        Q_Text,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
