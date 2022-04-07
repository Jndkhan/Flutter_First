import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Result extends StatelessWidget {
//  const Result({Key? key}) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 10) {
      resultText = 'you are awesome';
    } else if (resultScore <= 20) {
      resultText = 'you are good';
    } else if (resultScore <= 30) {
      resultText = 'you are bad';
    } else {
      resultText = 'you are strange';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Total Score: ' + resultScore.toString(),
            style: const TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 36,
                fontWeight: FontWeight.w500),
          ),
          Container(
            child: Text(
              resultPhrase,
              style: const TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 36,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text('Reset'),
              onPressed: resetHandler)
        ],
      ),
    );
  }
}
