import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_project/modules/home/controller/home_controller.dart';

import '../../../helper/toast_helper.dart';
import '../../../res/string.dart';


class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  int backPressCounter = 1;
  final HomeController _homeController = Get.put(HomeController());

  Future<bool> _onWillPop() async {
    if (backPressCounter < 2) {
      AppToast.toastMessage(StringRes.exit);
      backPressCounter++;
      Future.delayed(Duration(seconds: 2), () {
        backPressCounter--;
      });
    }else{
      SystemNavigator.pop();
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           SizedBox(height: 10.h,),
           Center(
             child: Text(StringRes.congratulation,style: TextStyle(
               fontSize: 18.sp,
               fontWeight: FontWeight.w700
             ),),
           ),SizedBox(height: 1.h,),
           Center(
             child: Obx(
               () => Text(_homeController.userDetails.value,style: TextStyle(
                 fontSize: 12.sp,
                 fontWeight: FontWeight.w500
               ),),
             ),
           ),
         ],
        ),
      ),
    );
  }
}
