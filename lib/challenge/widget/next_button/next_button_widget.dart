import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgrandColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgrandColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({required String label, required VoidCallback onTap})
    : this.backgrandColor = AppColors.darkGreen, 
    this.fontColor = AppColors.white,
    this.borderColor = AppColors.darkGreen,
    this.label = label,
    this.onTap = onTap;
    

     NextButtonWidget.white({required String label, required VoidCallback onTap})
    : this.backgrandColor = AppColors.white, 
    this.fontColor = AppColors.grey,
    this.borderColor = AppColors.border,
    this.label = label,
    this.onTap = onTap;


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
            BorderSide(color: borderColor)
          ),
        ),
      
        onPressed: onTap,
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
