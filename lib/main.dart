import 'package:roll_dice/styled_text.dart';
import 'package:flutter/material.dart';
import 'gradient_container.dart';

// The main function is the starting point of all out flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const StyledText('Roll Dice'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: GradientContainer(Colors.deepPurple, Colors.white),
        // body: const DataContainer(),
      ),
    ),
  );
}
