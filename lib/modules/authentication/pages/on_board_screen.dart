import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../res/appColors.dart';
import '../../../res/string.dart';
import '../controllers/auth_contoller.dart';


class OnBoardScreen extends StatelessWidget {
  static const String routeName = '/on_board_screen';
  AuthController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraint.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          StringRes.gettingStart,
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          StringRes.createYour,
                          style: TextStyle(
                            color: Color(0xFF535353),
                              fontSize: 12.sp, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        // _button(
                        //     title: StringRes.signUpGoogle,
                        //     icon: StringRes.googleIcon,
                        //     onTap: () {}),
                        // SizedBox(
                        //   height: 2.h,
                        // ),
                        // _button(
                        //     title: StringRes.signUpFacebook,
                        //     icon: StringRes.facebookIcon,
                        //     onTap: () {}),
                        // SizedBox(
                        //   height: 2.h,
                        // ),
                        // _button(
                        //     title: StringRes.signUpApple,
                        //     icon: StringRes.appleIcon,
                        //     onTap: () {
                        //
                        //     }),
                        // SizedBox(
                        //   height: 2.h,
                        // ),
                        // _textButton(
                        //     title: StringRes.alreadyHaveAccount,
                        //     text: StringRes.signIn,
                        //     onTap: () {
                        //       Get.toNamed(SignInScreen.routeName);
                        //     }),
                        SizedBox(
                          height: 2.h,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.86.w),
                          child: Divider(),
                        ),

                        SizedBox(
                          height: 1.h,
                        ),
                        // _textButton(
                        //     title: StringRes.dontHaveAn,
                        //     text: StringRes.signUp,
                        //     onTap: () {
                        //       Get.toNamed(SignUpScreen.routeName);
                        //     }),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _textButton(
      {required String title,
      required String text,
      required VoidCallback onTap}) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 12.sp, color: AppColors.textColor),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 12.sp,
                  decoration: TextDecoration.underline,
                  color: AppColors.buttonColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(
      {required String title,
      required String icon,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: title == StringRes.signUpApple
              ? AppColors.textColor
              : Color(0xFFEFEFEF),
        ),
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 7.w),
        margin: EdgeInsets.symmetric(horizontal: 5.86.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon,
              height: 20,
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: title == StringRes.signUpApple
                      ? AppColors.backgroundColor
                      : AppColors.textColor),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
