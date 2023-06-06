import 'package:flutter/material.dart';

//import 'package:dice_app/Style_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.defult({super.key})
      : firstColor = Colors.black,
        secondColor = Colors.purple;

  final Color firstColor;
  final Color secondColor;

  rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice/dice-2.png',
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
        ),
      ),
    );
  }
}
