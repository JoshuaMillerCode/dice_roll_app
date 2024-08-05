import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/styled_test.dart';
import 'package:flutter_tutorial/widgets/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  // Creating a another preset constructor
  const GradientContainer.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.indigo];

  final List<Color> colors;

  void handleDiceRoll() {
    debugPrint('Clicked');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
