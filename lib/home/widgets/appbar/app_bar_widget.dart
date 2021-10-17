import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      decoration: BoxDecoration(gradient: AppGradients.linear),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(TextSpan(
            text: "Olá, ", 
            style: AppTextStyles.title,
            children: [
              TextSpan(
                text: "Emerson Dev",
                style: AppTextStyles.titleBold
              )
            ]
            )),
          Container(
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage("https://avatars.githubusercontent.com/u/42453905?s=400&u=bca2248e91ea5062eeef1331190fea8c6c4ece6f&v=4"),
              ),
            )
          )
        ],
      )
      )
      ,
    )
  );
  
}