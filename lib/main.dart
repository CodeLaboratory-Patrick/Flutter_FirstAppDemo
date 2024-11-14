import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color(0xFF03A9F4),
           Color(0xFF1763A1),
        ),
      ),
    ),
  );
}
