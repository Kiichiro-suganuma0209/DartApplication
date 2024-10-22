import 'package:flutter/material.dart';
// import 'flutter_application_1/widgets/dice_roller.dart';
import 'package:flutter_application_1/widgets/dice_roller.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;
const gradientColours = [Colors.black, Colors.white];

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColours,
            begin: startAligment,
            end: endAligment,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
