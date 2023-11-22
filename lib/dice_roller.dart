import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
   const DiceRoller({super.key});
  @override
State<DiceRoller>  createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{

  var currentDiceRoll = 2;

  void rollDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    print('Dice Changing');
  }

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png',width:200),
        //  SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.black,
            textStyle:const  TextStyle(fontSize: 28),
          ),
          child: const Text('roll dice'),),
        //Image.asset('assets/images/dice-1.png',width:200)),
      ],
    );
  }
}