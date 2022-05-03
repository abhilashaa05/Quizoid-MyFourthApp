import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  int score = 0;
  Score({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your Score is :',
                style: TextStyle(fontSize: 40, color: Colors.orange),
              ),
              Text(
                score.toString(),
                style: TextStyle(fontSize: 50, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}