import 'package:DevQuiz/challenge/widget/next_button/next_button_widget.dart';
import 'package:DevQuiz/challenge/widget/question_indicator/question_indicator_Widget.dart';
import 'package:DevQuiz/challenge/widget/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({ Key? key }) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget()
        ),
      ),
      body: QuizWidget(
        title: "O que o Flutter faz em sua totalidade?",
      ),
      bottomNavigationBar: SafeArea (
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: NextButtonWidget.white(
              label: "Fácil",
              )),
            Expanded(child: NextButtonWidget.green(
              label: "Confirmar",
              )),
          ],
        ),
      ),
    );
  }
}