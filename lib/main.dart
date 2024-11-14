import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 3, 169, 244),
           Color.fromARGB(255, 23, 99, 161),
        ),
      ),
    ),
  );
}
