import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePageState(),
      ),
    ),
  );
}

class DicePageState extends StatefulWidget {
  const DicePageState({super.key});

  @override
  State<DicePageState> createState() => _DicePageStateState();
}

class _DicePageStateState extends State<DicePageState> {
  int leftDice = 1;
  int rightDice = 1;
  void twoDice() {
    leftDice = Random().nextInt(5) + 1;
    rightDice = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    twoDice();
                  },
                );
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    twoDice();
                  },
                );
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
