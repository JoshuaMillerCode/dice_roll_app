import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/styled_test.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String imageNumber = '2';

  void handleDiceRoll() {
    int randomInt = randomizer.nextInt(6) + 1;

    setState(() {
      imageNumber = randomInt.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText(content: "This is DiceRoll!", fontSize: 28),
        Image.asset(
          'assets/images/dice-$imageNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 60,
        ),
        ElevatedButton(
          onPressed: handleDiceRoll,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
