import 'package:flutter/material.dart';

class Move extends StatelessWidget {
  final int move;

  Move(this.move); // Added semicolon here

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: Text(
        "Move: $move",
        style: TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none, // Corrected typo in 'none'
          fontSize: 18,
        ),
      ),
    );
  }
}

