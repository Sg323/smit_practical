import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../res/appColors.dart';

class CustomButton extends StatelessWidget {
  String title;
  VoidCallback onTap;

  CustomButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(12),
           ),
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.backgroundColor),
          ),
        ),
      ),
    );
  }
}
