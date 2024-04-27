import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:test_project/modules/authentication/pages/sign_up_screen.dart';

import '../../../res/appColors.dart';
import '../../../res/string.dart';
import '../../../util/utils_validation.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_text_form_field.dart';
import '../controllers/auth_contoller.dart';


class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in_screen';
  AuthController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
     onWillPop: () async {
       _controller.emailLogin.clear();
       _controller.passwordLogin.clear();
       return true;
     },
      child: Scaffold(
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
                          key: _controller.signInformKey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 3.h,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              CustomTextFormField(
                                validator: UtilsValidation.emailValidator,
                                textEditController: _controller.emailLogin,
                                suffixIcon: false,
                                obSecureText: false,
                                textInputAction: TextInputAction.next,
                                hintText: StringRes.email,
                                textInputType: TextInputType.emailAddress,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Obx(() =>
                                  CustomTextFormField(
                                  validator: UtilsValidation.passwordValidator,
                                  textEditController: _controller.passwordLogin,
                                  suffixIcon: true,
                                  obSecureText: _controller.passObSecureLogin.value,
                                  textInputAction: TextInputAction.done,
                                  hintText: StringRes.password,
                                  textInputType: TextInputType.visiblePassword,
                                  onTap: (){
                                    _controller.passObSecureLogin.value = !_controller.passObSecureLogin.value;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Spacer(),
                              CustomButton(
                                title: StringRes.continueText,
                                onTap: () {
                                  if (_controller.signInformKey.currentState!
                                      .validate()) {
                                   _controller.loginWithEmailAndPassword();
                                    print("<><> is validate");
                                  }
                                },
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              GestureDetector(
                                  onTap: (){
                                    Get.toNamed(SignUpScreen.routeName);
                                  },
                                  child: Text(StringRes.createAccount,style: TextStyle(fontSize: 12.sp),)),
                              SizedBox(
                                height: 2.h,
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
      ),
    );
  }
}
