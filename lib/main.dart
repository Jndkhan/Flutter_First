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

  void answerquestion() {
    /*Display changes on Screen through this method*/
    setState(() {
      if(questionIndex == 4){
        questionIndex = 0;
      }
      else{
        questionIndex = questionIndex + 1;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your Name?',
      'How old are you?',
      'From where you are?',
      'Are you single?',
      'What\'s your favourite color?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Title'),
          ),
          body: Column(
            children: [
              Questions(questions[questionIndex]),
              Answer(answerquestion),
            ],
          )),
    );
  }
}
