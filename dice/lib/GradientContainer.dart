import 'package:flutter/material.dart';
import 'package:dice/StyledText.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final List<Color> fiveColors;

  GradientContainer({super.key, List<Color>? fiveColors})
      : fiveColors = (fiveColors?.length == 5 && fiveColors != null)
            ? fiveColors
            : [
                Colors.indigo.shade200,
                Colors.indigo.shade300,
                Colors.indigo.shade400,
                Colors.indigo.shade300,
                Colors.indigo.shade200
              ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: startAlignment,
          end: endAlignment,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const [0.1, 0.3, 0.5, 0.7, 1.0],
          colors: fiveColors,
        ),
      ),
      child: const Center(
        child: StyledText("Hello World"),
      ),
    );
  }
}
