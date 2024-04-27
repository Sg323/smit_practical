import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../res/appColors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditController;
  final String? hintText;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final bool obSecureText;
  final bool suffixIcon;
  final void Function()? onTap;
  final TextInputAction textInputAction;
  final Function(String)? onFieldSubmitted;
  double? margin;

  CustomTextFormField(
      {required this.hintText,
      required this.obSecureText,
      this.onChanged,
      required this.textEditController,
      this.textInputType,
      required this.suffixIcon,
      this.validator,
      this.onTap,
      this.onFieldSubmitted,
      required this.textInputAction,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextFormField(
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          textInputAction: textInputAction,
          autocorrect: false,
          enableSuggestions: false,
          validator: validator,
          controller: textEditController,
          obscureText: obSecureText,
          cursorColor: AppColors.textColor,
          keyboardType: textInputType,
          decoration: InputDecoration(
              hintText: "Enter $hintText",
              hintStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor.withOpacity(0.5),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFF777777), ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFF777777), ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFF777777), ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFF777777), ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFF777777),),
              ),
              labelText: hintText,
              labelStyle: TextStyle(color: Color(0xFF777777)),
              contentPadding: suffixIcon
                  ? EdgeInsets.only(right: 2.w, left: 4.w,top: 2.5.h,bottom: 2.5.h)
                  : EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.5.h),

              suffixIconConstraints:
                  BoxConstraints(maxHeight: 16.sp, maxWidth: 35.sp)),
          style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
