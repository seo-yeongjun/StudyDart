import 'package:flutter/material.dart';
import 'package:dice/StyledText.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

List<List<Color>> gradientColorList = [
  [
    Colors.indigo.shade200,
    Colors.indigo.shade300,
    Colors.indigo.shade400,
    Colors.indigo.shade300,
  ],
  [
    Colors.purple.shade200,
    Colors.pink.shade200,
    Colors.orange.shade200,
    Colors.yellow.shade200,
  ],
  [
    Colors.blue.shade200,
    Colors.green.shade200,
    Colors.yellow.shade200,
    Colors.red.shade200,
  ],
];

class GradientContainer extends StatelessWidget {
  final List<Color> fourColors;

  GradientContainer({super.key, List<Color>? fourColors})
      : fourColors = (fourColors?.length == 4 && fourColors != null)
            ? fourColors
            : gradientColorList[0];

  // Instagram style gradient
  GradientContainer.withInstagramStyleGradient({super.key})
      : fourColors = gradientColorList[1];

  // Google style gradient
  GradientContainer.withGoogleStyleGradient({super.key})
      : fourColors = gradientColorList[2];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: startAlignment,
          end: endAlignment,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const [0.2, 0.4, 0.6, 0.8],
          colors: fourColors,
        ),
      ),
      child: const Center(
        child: StyledText("Hello World"),
      ),
    );
  }
}
