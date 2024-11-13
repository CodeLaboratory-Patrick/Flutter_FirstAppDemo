import 'package:flutter/material.dart';
class GradientContainer extends StatelessWidget{
  //initialization work
  //GradientContainer({key}): super(key: key);
  const GradientContainer({super.key});
  
  @override
  Widget build(context) {
    return  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color.fromRGBO(3, 169, 244, 1),
                 Color.fromARGB(255, 23, 99, 161)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        );
  }
}