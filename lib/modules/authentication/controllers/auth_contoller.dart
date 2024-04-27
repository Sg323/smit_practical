import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:encrypt/encrypt.dart' as key;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_project/helper/toast_helper.dart';
import 'package:test_project/modules/authentication/pages/sign_in_screen.dart';
import 'package:test_project/modules/home/pages/home_screen.dart';

import '../../../helper/firebase_api.dart';
import '../../../helper/sqflite_database.dart';


class AuthController extends GetxController {
  TextEditingController emailRegister = TextEditingController();
  TextEditingController emailLogin = TextEditingController();
  TextEditingController passwordRegister = TextEditingController();
  TextEditingController passwordLogin = TextEditingController();
  TextEditingController repeatPasswordRegister = TextEditingController();
  TextEditingController firstNameRegister = TextEditingController();
  TextEditingController lastNameRegister = TextEditingController();
  TextEditingController phoneNumberRegister = TextEditingController();
  RxBool passObSecureRegister = true.obs;
  RxBool rePassObSecureRegister = true.obs;
  RxBool passObSecureLogin = true.obs;
  RxBool isLoading = false.obs;
  RxBool isSignUpLoading = false.obs;
  late Encrypter encrypter;
  final signInformKey = GlobalKey<FormState>();
  final signUpformKey = GlobalKey<FormState>();
  final signUpNextformKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    userLoginCheck();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> userLoginCheck() async {
    var userData = await DataBaseHelper.getUserData();
    if(userData.isEmpty){
      Get.toNamed(SignInScreen.routeName);
    }else {
      Get.toNamed(HomeScreen.routeName);
    }
  }

  Future<void> loginWithEmailAndPassword() async {
    var role = '';
    FirebaseAuth.instance.signOut();

    isLoading.value = true;

    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailLogin.text,
        password: passwordLogin.text,
      );
      User? user = userCredential.user;
      DataBaseHelper.insertUserData({"email" : emailLogin.text,"password":passwordLogin.text});
      print('User logged in successfully!');
      Get.toNamed(HomeScreen.routeName);

    } catch (e) {
      AppToast.toastMessage("Invalid credential");
      print('Error during login: $e');
      isLoading.value = false;
    }
  }

  Future<void> registerUser() async {
    isSignUpLoading.value = true;
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailRegister.text,
        password: passwordRegister.text,
      );
      isSignUpLoading.value = false;
      print('User registered successfully: ${userCredential.user!.uid}');
      FirebaseApi firebaseApi = FirebaseApi();
      firebaseApi.createUserData(emailRegister.text);
      DataBaseHelper.insertUserData({"email" : emailRegister.text,"password":passwordRegister.text});
      Get.toNamed(HomeScreen.routeName);
    } on FirebaseAuthException catch (e) {

      if (e.code == 'email-already-in-use') {
        AppToast.toastMessage('Email is already in use');

      } else {
        AppToast.toastMessage('Failed to register user: ${e.message}');

      }
    } catch (e) {
      print('Failed to register user: $e');

    }
  }

}