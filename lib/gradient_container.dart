import 'package:flutter/material.dart';

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
      : color1 = const Color.fromARGB(255, 3, 169, 244),
        color2 = const Color.fromARGB(255, 23, 99, 161);  

  final Color color1;
  final Color color2;

  void rollDice()
  {

  }

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-1.png',
            width: 200,
            ),
            //Option 1 for Margin.
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //Option 2 for Margin.  
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),  
          ],
        ),
      ),
    );
  }
}
