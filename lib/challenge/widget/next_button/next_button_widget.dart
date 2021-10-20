import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgrandColor;
  final Color fontColor;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgrandColor,
    required this.fontColor,
  }) : super(key: key);

  NextButtonWidget.green({required String label})
    : this.backgrandColor = AppColors.darkGreen, 
    this.fontColor = AppColors.white,
    this.label = label;

     NextButtonWidget.white({required String label})
    : this.backgrandColor = AppColors.white, 
    this.fontColor = AppColors.grey,
    this.label = label;


  @override

  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgrandColor,
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )),
          side: MaterialStateProperty.all(
            BorderSide(color: AppColors.border)
          )
        ),
      
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
