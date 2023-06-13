import 'package:dice_app/dice_roller.dart';
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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
