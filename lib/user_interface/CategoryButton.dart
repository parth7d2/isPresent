import 'package:flutter/material.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/font_util.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  CategoryButton({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: isSelected ? CustomColors.primary_ : CustomColors.opacity_0_8,  // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
        ),
        onPressed: () {
          // Handle button press
        },
        child: Text(label, style:Headline (tc: isSelected ? Colors.white : CustomColors.primary_, size: 16),),
      ),
    );
  }
}