import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  //initialization work
  //GradientContainer({key}): super(key: key);
  const GradientContainer({super.key});
  
  @override
  Widget build(context) {
    return  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                 Color.fromARGB(255, 3, 169, 244),
                 Color.fromARGB(255, 23, 99, 161),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: StyledText(),
          ),
        );
  }
}