import 'dart:math';
import 'package:flutter/material.dart';

class DiceBoard extends StatefulWidget {
  const DiceBoard({super.key});

  @override
  State<DiceBoard> createState() => _DiceBoardState();
}

class _DiceBoardState extends State<DiceBoard> {
  int diceNum = 1;

  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/dice-$diceNum.png',
        ),
        TextButton(
          onPressed: () => {
            setState(() {
              diceNum = random.nextInt(6) + 1;
            })
          },
          child: const Text("주사위 굴리기", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
