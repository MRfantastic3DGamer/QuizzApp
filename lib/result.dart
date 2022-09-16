import 'package:flutter/material.dart';

class result extends StatelessWidget {
  int _score;
  final VoidCallback _reset;

  String get _resultText{
    String t = 'YOU DID IT !!';
    if(_score<=5){
      t = 'Bad work !  Only ' + _score.toString();
    } else if(_score<=10){
      t = 'Decent ' + _score.toString();
    }else{
      t = 'Excellent ' + _score.toString();
    }
    return t;
  }

  result(this._score,this._reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            _resultText,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: _reset,
            child: Text("Reset"),
          ),
        ],
      )
    );
  }
}
