import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_project/modules/authentication/pages/sign_in_screen.dart';
import 'package:test_project/modules/authentication/pages/sign_up_screen.dart';
import 'package:test_project/modules/home/pages/home_screen.dart';
import 'package:test_project/splash_screen.dart';

import 'helper/sqflite_database.dart';
import 'modules/authentication/controllers/auth_contoller.dart';
import 'modules/authentication/pages/on_board_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DataBaseHelper.intDB();
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          initialBinding: AppBinding(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          builder: (context, child) {
            return Container(
              child: child,
            );
          },
          initialRoute: SplashScreen.routeName,
          getPages: [
            GetPage(
              name: OnBoardScreen.routeName,
              page: () => OnBoardScreen(),
              transition: Transition.fadeIn,
            ),GetPage(
              name: SignInScreen.routeName,
              page: () => SignInScreen(),
              transition: Transition.fadeIn,
            ),GetPage(
              name: SignUpScreen.routeName,
              page: () => SignUpScreen(),
              transition: Transition.fadeIn,
            ),GetPage(
              name: HomeScreen.routeName,
              page: () => HomeScreen(),
              transition: Transition.fadeIn,
            ),GetPage(
              name: SplashScreen.routeName,
              page: () => SplashScreen(),
              transition: Transition.fadeIn,
            ),

          ],
        );
      },
    );
  }
}

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
