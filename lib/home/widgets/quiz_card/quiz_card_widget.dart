import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widgets/progressIdicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(
          color: AppColors.border,
        )),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 40,
          width: 40,
          child: Image.asset(AppImages.blocks),
        ),
        SizedBox(
          height: 24,
        ),
        Text.rich(TextSpan(
          text: "Gerenciamento   ", 
          style: AppTextStyles.heading15,
          children: [
            TextSpan(
              text: "de Estado"
            )
          ] 
          )),
         SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "3 de 10",
                style: AppTextStyles.body11,
              ),
            ),
            Expanded(
              flex: 2,
              child: ProgressIndicatorWidget(value: 0.3)
            )
          ],
        )
      ],),
    );
  }
}