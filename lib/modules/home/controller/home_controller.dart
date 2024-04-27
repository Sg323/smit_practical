import 'package:get/get.dart';
import 'package:test_project/helper/firebase_api.dart';

import '../../../helper/sqflite_database.dart';

class HomeController extends GetxController {
  RxString userDetails = ''.obs;
  FirebaseApi firebaseApi = FirebaseApi();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserData();
  }

  void getUserData() async {
    var userData = await DataBaseHelper.getUserData();

   var data = firebaseApi.getuserData('');
    print("==>>>> ${userData}");
    userDetails.value = '${userData[0]["email"]}';
  }

}