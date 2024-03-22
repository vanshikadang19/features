import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slidepuzzle1/Board.dart';
import 'Board.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SystemChrome.setEnabledSystemUIMode([] as SystemUiMode);
  runApp(slidepuzzle1());
}

class slidepuzzle1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "slide puzzle",
      debugShowCheckedModeBanner: false,
      home: Board(),

    );
  }
}