import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 6;

  rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice/dice-$diceNumber.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        // Button that has a backgroundcolor and slitly shadow.
        /* ElevatedButton(onPressed: onPressed, child: child)  */

        // Button that hasn't not backgroundcolor but has border.
        /* OutlinedButton(onPressed: onPressed, child: child) */

        // Button that dispaly some pressable text
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            /*  padding: const EdgeInsets.only(
                  top: 30,
                ), */
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18.0,
            ),
          ),
          child: const Text('Roll the Dice!'),
        )
      ],
    );
  }
}
