import 'dart:ui';

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
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.orange,
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          side: const BorderSide(color: Colors.orange),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
