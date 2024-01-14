import 'package:flutter/material.dart';

import 'data/question.dart';
import 'model/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function() indexPlus;

  const QuestionsScreen(this.indexPlus, {super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  int currentQuestionIndex = 0; // 현재 질문 인덱스
  late QuizQuestion currentQuestion; // 현재 질문 가져오기
  late Function() indexPlus;

  List<int> selectNumbers = [];

  @override
  void initState() {
    // TODO: implement initState
    currentQuestion = questions[currentQuestionIndex];
    super.initState();
  }

  void selectAnswer(int index) {
    setState(() {
      selectNumbers.add(index);
      currentQuestionIndex++;
      currentQuestion = questions[currentQuestionIndex];

      if (currentQuestionIndex >= 4) {
        print("selectNumbers: $selectNumbers");
        widget.indexPlus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1} of 5",
          style: getTextStyleWidthSize(24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        Text(currentQuestion.text,
            style: GoogleFonts.gugi(textStyle: getTextStyleWidthSize(20))),
        ...currentQuestion.getShuffleAnswers().map((items) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(100, 49, 20, 97),
                //edge
                side: const BorderSide(width: 1.0, color: Colors.white),
                //둥글게
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () {
                selectAnswer(currentQuestion.answers.indexOf(items));
              },
              child: Text(items));
        }),
      ],
    );
  }

  TextStyle getTextStyleWidthSize(double size) {
    return TextStyle(color: Colors.white, fontSize: size);
  }
}
