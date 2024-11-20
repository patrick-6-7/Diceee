import 'package:dice/diceee.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 16.0,
          shadowColor: Colors.black,
          title: const Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var random = Random();
  int left = 3;
  int right = 3;

  void rollDice() {
    setState(() {
      left = random.nextInt(6) + 1;
      right = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DiceButton(diceNumber: left, onPressed: rollDice),
          DiceButton(diceNumber: right, onPressed: rollDice),
        ],
      ),
    );
  }
}



