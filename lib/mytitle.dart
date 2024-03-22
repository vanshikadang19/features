import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final Size size;

  MyTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      padding: EdgeInsets.all(5.0),
      child: Text(
        "slidepuzzle",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size.height * 0.05,
          color: Colors.white,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
