import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() ansFunction;
  final String _ansString;

  Answer(this._ansString, this.ansFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(_ansString),
        onPressed: ansFunction,
      ),
    );
  }
}
