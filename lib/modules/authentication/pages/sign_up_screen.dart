import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import '../../../res/appColors.dart';
import '../../../res/string.dart';
import '../../../util/utils_validation.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_text_form_field.dart';
import '../controllers/auth_contoller.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign_up_screen';
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.5.w),
                      child: Form(
                        key: _controller.signUpformKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              StringRes.createAccount,
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            CustomTextFormField(
                              validator: UtilsValidation.emailValidator,
                              textEditController: _controller.emailRegister,
                              suffixIcon: false,
                              obSecureText: false,
                              textInputAction: TextInputAction.next,
                              hintText: StringRes.email,
                              textInputType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Obx(
                              () => CustomTextFormField(
                                validator: UtilsValidation.passwordValidator,
                                textEditController:
                                    _controller.passwordRegister,
                                suffixIcon: true,
                                obSecureText:
                                    _controller.passObSecureRegister.value,
                                textInputAction: TextInputAction.next,
                                hintText: StringRes.password,
                                textInputType: TextInputType.visiblePassword,
                                onTap: () {
                                  _controller.passObSecureRegister.value =
                                      !_controller.passObSecureRegister.value;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Obx(
                              () => CustomTextFormField(
                                onTap: () {
                                  _controller.rePassObSecureRegister.value =
                                      !_controller.rePassObSecureRegister.value;
                                },
                                validator: (value) {
                                  return UtilsValidation
                                      .retypePasswordValidator(value,
                                          _controller.passwordRegister.text);
                                },
                                textEditController:
                                    _controller.repeatPasswordRegister,
                                suffixIcon: true,
                                obSecureText:
                                    _controller.rePassObSecureRegister.value,
                                textInputAction: TextInputAction.done,
                                hintText: StringRes.repeatPassword,
                                textInputType: TextInputType.visiblePassword,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Spacer(),
                            SizedBox(
                              height: 2.h,
                            ),
                            CustomButton(
                              title: StringRes.continueText,
                              onTap: () {
                                _controller.registerUser();
                              },
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                          ],
                        ),
                      ),
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
}
