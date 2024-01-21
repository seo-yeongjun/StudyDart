import 'package:flutter/material.dart';
import 'data/question.dart';

class ResultScreen extends StatelessWidget {
  final List<int> selectNumbers;
  final void Function() indexPlus;

  const ResultScreen(this.selectNumbers, this.indexPlus, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.yellow.withOpacity(0.15)),
          child: SizedBox(
            height: 500,
            child: SingleChildScrollView(
              child: Column(children: [
                //get item and index of questions
                for (var i = 0; i < questions.length; i++)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // number with circle
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  "${i + 1}",
                                  style: const TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            // question
                            const SizedBox(width: 13),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  questions[i].text,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // answer
                                Text(
                                  "answer: ${questions[i].answers[0]}",
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                // user choice
                                Text(
                                  "your: ${questions[i].answers[selectNumbers[i]]}",
                                  style: const TextStyle(
                                    color: Colors.pink,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ]),
            ),
          ),
        ), // 다시하기 버튼

        ElevatedButton(
          onPressed: (){indexPlus();},
          child: const Text("다시하기"),
        )
      ],
    );
  }
}
