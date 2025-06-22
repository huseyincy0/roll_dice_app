import 'package:flutter/material.dart';

const startAliment = Alignment.topLeft;
const endAliment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  
  var activeDiceImage = 'assets/images/dice-1.png';

  void roleDice() {
    activeDiceImage = 'assets/images/dice-2.png';
    print("Dice Rolled");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-1.png', width: 200, 
            ),
            TextButton(
              onPressed: 
                () {
                roleDice();
                },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                 textStyle: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
              ),
            ), child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
