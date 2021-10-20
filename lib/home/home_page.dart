import 'package:DevQuiz/challenge/widget/quiz/quiz_widget.dart';
import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/home/home_controller.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override

  void initState(){
    super.initState();
    controller.getUSer();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    if(controller.state == HomeState.sucess){
    return Scaffold(
      appBar: AppBarWidget(user: controller.user!),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [             
                LevelButtonWidget(
                  label: "Fácil",
                ),
                LevelButtonWidget(
                  label: "Médio",
                ),
                LevelButtonWidget(
                  label: "Difícil",
                ),
                LevelButtonWidget(
                  label: "Perito",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: 
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: controller.quizzes!.map((e) => QuizCardWidget(
                  title: e.title,
                  completed: "${e.questionAnswered} de ${e.question.length}",
                  percent: e.questionAnswered/e.question.length,
                )).toList()
              )
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ));
    } else {
      return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
        ),
      ),
    );
    }
  }  
}
