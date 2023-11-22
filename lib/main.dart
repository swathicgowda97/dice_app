import 'package:dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
   const DiceApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: GradientContainer( [Colors.lightBlueAccent,Colors.amberAccent,Colors.pinkAccent,Colors.tealAccent],),
    );
  }
}



