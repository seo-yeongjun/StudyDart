import 'package:flutter/material.dart';

class InitScreen extends StatelessWidget {
  final Function() switchScreen;

  const InitScreen(this.switchScreen, {super.key});

  static const TextStyle whiteTextStyle =
      TextStyle(color: Colors.white, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          color: const Color.fromRGBO(255, 255, 255, 0.5),
        ),
        const Text(
          "Lean Flutter the fun way!!",
          style: whiteTextStyle,
        ),
        OutlinedButton(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Start Quiz!!",
                style: whiteTextStyle,
              ),
              SizedBox(width: 15),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: Colors.white,
              )
            ],
          ),
        )
      ]),
    );
  }
}
