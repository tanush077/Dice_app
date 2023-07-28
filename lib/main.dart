import 'package:flutter/material.dart';
import 'package:first_app/gradient_constructor.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 34, 10, 76), Color.fromARGB(255, 84, 33, 172)),
      ),
    ),
  );
}
