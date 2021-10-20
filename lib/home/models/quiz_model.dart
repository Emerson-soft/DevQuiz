import 'dart:convert';

import 'package:DevQuiz/home/models/question_model.dart';

enum Level {
  facil, 
  medio, 
  dificil, 
  perito
}

extension LevelStringExt on String {
   Level get parse => {
    "facil" : Level.facil,
    'medio' : Level.medio,
    "dificil" : Level.dificil,
    "perito": Level.perito,
  }[this]!;
}

extension LevelExt on Level {
   String get Parse => {
    Level.facil : 'facil',
    Level.medio : 'medio',
    Level.dificil : 'dificil',
    Level.perito : 'perito',
  }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> question;
  final int questionAnswered;
  final String imagem;
  final Level level;

  QuizModel({
    required this.title, 
    required this.question,
    this.questionAnswered = 0,
    required this.imagem,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'question': question.map((x) => x.toMap()).toList(),
      'questionAnswered': questionAnswered,
      'imagem': imagem,
      'level': level.Parse,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      question: List<QuestionModel>.from(map['question']?.map((x) => QuestionModel.fromMap(x))),
      questionAnswered: map['questionAnswered'],
      imagem: map['imagem'],
      level: map['level'].toString().parse,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));
}
