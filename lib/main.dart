import 'package:flutter/material.dart';
import 'package:my_first_app/quiz.dart';
import 'package:my_first_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  /*question array*/
  static final _questions = const [
    {
      'questionText': 'What\'s your favourite Color?',
      'answer': ['Red', 'Green', 'Blue', 'White']
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'answer': ['Cat', 'Dog', 'Rabbit', 'Lion']
    },
    {
      'questionText': 'What\'s your favourite Number?',
      'answer': ['1', '2', '3', '4']
    },
    {
      'questionText': 'Your favourite Country?',
      'answer': ['Pakistan', 'UAE', 'USA', 'UK']
    },
    {
      'questionText': 'Your favourite City?',
      'answer': ['Islamabad', 'Karachi', 'Lahore', 'Peshawar']
    },
  ];

  void _answerquestion() {
    /*Display changes on Screen through this method*/
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print("we have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex,_answerquestion)
            : Result(),
      ),
    );
  }
}
