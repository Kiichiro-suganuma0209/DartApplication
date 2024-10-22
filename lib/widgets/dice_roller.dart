import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "lib/assets/dice$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 157, 160, 231)),
          child: const Text(
            'Roll the die',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        )
      ],
    );
  }
}
