import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function()? selectHandler2;
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: RaisedButton(
        elevation: 10,
        textColor: Colors.white,
        color: Colors.lightBlue,
        child: const Text('Answer'),
        onPressed: selectHandler,
      ),
    );
  }
}
