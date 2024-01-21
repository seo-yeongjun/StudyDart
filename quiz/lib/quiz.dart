import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/result_screen.dart';

import 'init_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  late Widget activeScreen;
  int screenIndex = 0;
  List<int> selectNumbers = [];

  void selectAnswer(int index) {
    setState(() {
      selectNumbers.add(index);
    });
  }

  @override
  void initState() {
    super.initState();
    switchScreen(screenIndex);
  }

  void indexPlus() {
    setState(() {
      screenIndex++;
      if (screenIndex > 2) {
        screenIndex = 0;
        selectNumbers.clear(); // Clear the selections when restarting the quiz
      }
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
          activeScreen = QuestionsScreen(indexPlus, selectAnswer);
          break;
        case 2:
          activeScreen = ResultScreen(selectNumbers, indexPlus);
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
