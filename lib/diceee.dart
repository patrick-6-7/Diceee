import 'package:flutter/material.dart';

class DiceButton extends StatelessWidget {
  final int diceNumber;
  final VoidCallback onPressed;

  const DiceButton({
    super.key, 
    required this.diceNumber,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Image.asset('assets/dice$diceNumber.png'),
      ),
    );
  }
}