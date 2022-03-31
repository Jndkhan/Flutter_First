import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questiontext;

  Questions(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(questiontext,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 40)),
    );
  }
}
