import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    // TODO: implement createState
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  // Widget? activeScreen;
  // // bien activescreen co the la 1 widget or null vi khi moi chay class thi ve
  // // mat ki thuat co the class ban dau chua duoc goi toi.
  // @override
  // void initState() {// tao object va luu vao bo nho
  // // neu khong function switchscreen se bi loi vi thuc hien gan nhu cung luc
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen'; // anh xa bien thanh 1 chuoi hoac 1 so =>
  // de theo doi hon

  void switchScreen() {
    setState(() {
      // chay lai function trong class do
      // so sanh cac diem khac neu khac nhau thi se thuc hien lai function
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurple,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 65, 8, 164),
                  const Color.fromARGB(255, 124, 88, 224)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget, // goi la bieu thuc 3 ngoi
          )),
    );
  }
}
