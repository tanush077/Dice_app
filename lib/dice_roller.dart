import 'package:flutter/material.dart';
import 'dart:math';

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState() {
    return dicerollerstate();
  }
}

class dicerollerstate extends State<Diceroller> {
  var currentdiceroll = 2;

  rolldice() {
    setState(() {
      currentdiceroll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentdiceroll.png',
        width: 200,
      ),
      TextButton(
        onPressed: rolldice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28)),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
