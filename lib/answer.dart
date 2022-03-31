import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function()? selectHandler2;
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: RaisedButton(
        elevation: 10,
        textColor: Colors.white,
        color: Colors.lightBlue,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
