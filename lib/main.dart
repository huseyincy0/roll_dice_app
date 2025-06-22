import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roll Dice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: const GradientContainer(
           Color.fromARGB(255, 79, 7, 224),
           Color.fromARGB(255, 194, 9, 194),
        ),
      ),
    ),
  );
}
