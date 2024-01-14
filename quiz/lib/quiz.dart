import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';

import 'init_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  late Widget activeScreen;
  int screenIndex = 0;

  @override
  void initState() {
    super.initState();
    switchScreen(screenIndex);
  }

  void indexPlus() {
    setState(() {
      screenIndex++;
      switchScreen(screenIndex);
    });
  }

  void switchScreen(int index) {
    setState(() {
      switch (index) {
        case 0:
          activeScreen = InitScreen(indexPlus);
          break;
        case 1:
          activeScreen = QuestionsScreen(indexPlus);
          break;
        case 2:
          activeScreen = Container();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.deepPurple),
          width: double.infinity,
          padding: const EdgeInsets.all(36),
          child: activeScreen,
        ),
      ),
    );
  }
}
