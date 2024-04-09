import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Details_Screen1 extends StatefulWidget {
  const Details_Screen1({super.key});

  @override
  State<Details_Screen1> createState() => _Details_Screen1State();
}

class _Details_Screen1State extends State<Details_Screen1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            StepProgressIndicator(
              size: 15,
                totalSteps: 3,
            currentStep: 1,
              selectedColor: Colors.purple,
              unselectedColor: Colors.yellow,
              padding: 6,
              




            ),

          ],
        ),
      ),


    );
  }
}
