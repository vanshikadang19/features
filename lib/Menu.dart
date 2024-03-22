import 'package:flutter/material.dart';
import 'package:slidepuzzle1/resetbutton.dart';
class Menu extends StatelessWidget {
Function reset;
int move;
int secondsPassed;

Menu(this.reset, this.move, this.secondsPassed, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAlignment: CrossAlignment.start,
        children: <Widget>[
          ResetButton(reset),
          Move(move),
          Time(secondsPassed),
        ],
      ),
    );
  }
}
