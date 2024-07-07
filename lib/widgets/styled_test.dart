import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
      {required this.content,
      this.fontSize = 14,
      this.textColor = Colors.white,
      super.key});

  final String content;
  final double fontSize;
  final Color textColor;

  @override
  Widget build(context) {
    return Text(
      content,
      style: TextStyle(color: textColor, fontSize: fontSize),
    );
  }
}
