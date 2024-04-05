import 'package:flutter/material.dart';
import 'dart:math';

final randomize =  Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll= randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/dice-$currentDiceRoll.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            foregroundColor: Colors.white,
            backgroundColor: Colors.purple,
            textStyle: const TextStyle(fontSize: 23),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
