import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final int secondsPassed;

  Time(this.secondsPassed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: Text(
        "Time: $secondsPassed",
        style: TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none, // Corrected typo in 'none'
          fontSize: 18,
        ),
      ),
    );
  }
}
