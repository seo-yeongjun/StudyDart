import "dart:math";

import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //gradation color
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const [0.1, 0.3, 0.5, 0.7, 1.0],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.indigo.shade200,
            Colors.indigo.shade300,
            Colors.indigo.shade400,
            Colors.indigo.shade300,
            Colors.indigo.shade200,
          ],
        ),
      ),
      child: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}
