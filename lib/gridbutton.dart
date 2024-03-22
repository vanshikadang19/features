import  'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final Function click;
  final String text;

  GridButton(this.text, this.click); // Added missing comma and made parameters final

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      onPressed: click,
    );
  }
}
