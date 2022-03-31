import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questiontext;
  final int age;

  Questions(this.questiontext, this.age);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(questiontext,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 40)),
          Text(age.toString(),
              style: const TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ],
      ),
    );
  }
}
