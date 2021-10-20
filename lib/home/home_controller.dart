import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/home/models/awnser_model.dart';
import 'package:DevQuiz/home/models/question_model.dart';
import 'package:DevQuiz/home/models/quiz_model.dart';
import 'package:DevQuiz/home/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repostiroty = HomeRepository();

  void getUSer() async {
    state = HomeState.loading;
    user = await repostiroty.getUser();
    state = HomeState.sucess;
  }

  void  getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repostiroty.getQuizzes();
    state = HomeState.sucess;
  }
}