import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
