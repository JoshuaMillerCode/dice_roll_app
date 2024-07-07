import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/styled_test.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  // Creating a another preset constructor
  const GradientContainer.purple({super.key})
      : colors = const [Colors.purple, Colors.deepPurpleAccent];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const StyledText(content: "Hello World"),
          const StyledText(content: "This is DiceRoll!", fontSize: 28),
          Image.asset('assets/images/dice-2.png')
        ],
      )),
    );
  }
}
