import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int resultScore;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 3) {
      resultText = 'You\'re not cool.';
    } else if (resultScore <= 8) {
      resultText = 'You\'re cool.';
    } else if (resultScore <= 15) {
      resultText = 'You\'re very cool.';
    } else if (resultScore == 21) {
      resultText = 'You\'re the best! like Ido levels.';
    } else if (resultScore > 100) {
      resultText = 'You chose wisely. Ido is just the best.';
    } else {
      resultText = 'You\'re so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
