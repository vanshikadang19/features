
import 'package:flutter/material.dart';

import 'Grid.dart';
import 'Menu.dart';
import 'mytitle.dart';

class Board extends StatefulWidget {
  const Board({required Key key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
 int move = 0 ;
 int secondsPassed = 0;

 Timer timer;
 static const duration = const Duration(seconds: 1);
 bool isActive = false;
  @override
  void initState() {
    super.initState();
    numbers.shuffle();

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (timer=null){
      timer = Timer.periodic(duration,(t){
       startTimer();
      });
    }

    return SafeArea(
      child: Container(
        height: size.height,
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            MyTitle(size),
            Grid(numbers, size, clickGrid),
            Menu(reset, move,secondsPassed , size),
          ],
        ),
      ),
    );
  }

  void clickGrid(int index) {
    if (secondsPassed == 0){
      isActive = true;
    }
  }
    if ((index - 1 >= 0 && numbers[index - 1] == 0 && index % 4 != 0) ||
        (index + 1 < 16 && numbers[index + 1] == 0 && index % 4 != 0) ||
        (index - 4 >= 0 && numbers[index - 4] == 0) ||
        (index + 4 < 16 && numbers[index + 4] == 0)) {
      setState(() {
        numbers[numbers.indexOf(0)] = numbers[index];
        numbers[index] = 0;
        move++;
      });
    }
    checkWin();
  }
  void reset(){
    setState(() {
      numbers.shuffle();
      move = 0;
      secondsPassed = 0;
      isActive = false;
    });
  }
  void startTime(){
    if (isActive){
    setState((){
      secondsPassed +=1;
    });
    bool isSorted(List list){
  }
    void checkWin() {
      if (isSorted(numbers)) {}
    }}}
