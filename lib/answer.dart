import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function()? selectHandler2;
   final VoidCallback selectHandler;

   Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlue,
        child: Text('Answer'),
        onPressed: selectHandler,
      ),
    );
  }
}
