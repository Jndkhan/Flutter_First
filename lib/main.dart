import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerquestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your Name?',
      'How old are you?',
      'From where you are?',
      'What\'s your favourite color?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Title'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: () {
                  answerquestion();
                },
              ),
              RaisedButton(
                child: const Text('Answer 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: const Text('Answer 3'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
