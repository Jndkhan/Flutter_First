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
  /*question array*/
  static final _questions = [
    {
      'questionText': 'What\'s your favourite Color?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 7},
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Rabbit', 'score': 7},
        {'text': 'Dog', 'score': 5},
        {'text': 'Elephant', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite Number?',
      'answer': [
        {'text': '1', 'score': 10},
        {'text': '2', 'score': 7},
        {'text': '3', 'score': 5},
        {'text': '4', 'score': 2}
      ]
    },
    {
      'questionText': 'Your favourite Country?',
      'answer': [
        {'text': 'Pakistan', 'score': 10},
        {'text': 'UAE', 'score': 7},
        {'text': 'USA', 'score': 5},
        {'text': 'UK', 'score': 2}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  var titleText = 'QuizApp';

  void _resetQuiz() {
    setState(() {
      titleText = "QuizApp";
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerquestion(int score) {
    _totalScore = _totalScore + score;

    /*Display changes on Screen through this method*/
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print("we have more questions");
    } else {
      titleText = "Final Results";
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(titleText,style: TextStyle(color: Colors.yellow),),
        ),
        body: _questionIndex < _questions.length
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'Question Number: ' + (_questionIndex + 1).toString(),
                      style: TextStyle(color: Colors.teal, fontSize: 30),
                    ),
                  ),
                  Quiz(_questions, _questionIndex, _answerquestion),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your Score: ' + (_totalScore).toString(),
                      style: TextStyle(color: Colors.teal, fontSize: 30),
                    ),
                  ),
                ],
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
