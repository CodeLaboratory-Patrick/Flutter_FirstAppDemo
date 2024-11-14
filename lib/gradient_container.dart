import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //initialization work
  //GradientContainer({key}): super(key: key);

  // Option 1
  //const GradientContainer({required this.colors, super.key});
  //final List<Color> colors;

  //      @override
  //Widget build(context) {
  //  return  Container(
  //        decoration: BoxDecoration(
  //          gradient: LinearGradient(
  //            colors: colors,
  //            begin: startAlignment,
  //            end: endAlignment,
  //          ),
  //        ),
  //        child: const Center(
  //          child: StyledText('Hello World'),
  //        ),
  //      );
  //}


  //Option 2
  const GradientContainer(this.color1, this.color2, {super.key});

  //Option 3
  const GradientContainer.purple({super.key}) 
      : color1 = const Color(0xFF03A9F4),
        color2 = const Color(0xFF1763A1);  

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
