
import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
   Function reset; // Declare reset as final

 ResetButton(this.reset)
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Reset"),
      onPressed: reset, // Call the reset function when button is pressed
      color: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    );
  }
}

