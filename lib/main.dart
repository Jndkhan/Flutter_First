import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  /*question array*/
  static final questions = const [
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

  void answerquestion() {
    /*Display changes on Screen through this method*/
    setState(() {
      questionIndex = questionIndex + 1;
    });
    if (questionIndex < questions.length) {
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
        body: questionIndex < questions.length
            ? Column(
                children: [
                  Questions(questions[questionIndex]['questionText'] as String),
                  ...(questions[questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(answerquestion, answer);
                  }).toList()
                ],
              )
            : const Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
