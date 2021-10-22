import 'package:flutter/material.dart';

import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/models/awnser_model.dart';

class AwnsertWidget extends StatelessWidget {
  final AwnserModel anwser;
  final bool isSelected;
  final bool disable;
  final VoidCallback onTap;

  const AwnsertWidget({
    Key? key,
    required this.anwser,
    this.isSelected = false,
    this.disable = false,
    required this.onTap,
  }) : super(key: key);

  Color get _selectedColorRight =>
    anwser.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight => 
     anwser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
     anwser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _SelectedBorderCardRigth =>
     anwser.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStleRight => 
     anwser.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight =>
     anwser.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: IgnorePointer(
        ignoring: disable,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorCardRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(
                BorderSide(
                  color: isSelected ? _SelectedBorderCardRigth : AppColors.border,
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                     anwser.title,
                    style: isSelected ? _selectedTextStleRight : AppTextStyles.body,
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: isSelected ? _selectedColorRight: AppColors.white,
                    borderRadius: BorderRadius.circular(500),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: isSelected ? _selectedBorderRight : AppColors.border,
                      )
                    )
                  ),
                  child: isSelected
                    ? Icon(
                    _selectedIconRight, 
                    size: 16,
                    color: Colors.white,
                  ) : null
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
