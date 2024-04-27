// import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  // final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<dynamic> getuserData(String email) async {
    // final result = await _firebaseFirestore.collection(email).get();
    // // print("----->>>>>>>>> ${result}");
    // // print("----->>>>>>>>> ${result.docs}");
    // //  print("----->>>>>>>>> ${result.docs.first.id}");
    // //  print("----->>>>>>>>> ${result.docs.first.data()}");
    // return result.docs;
  }

  Future<dynamic> createUserData(String email) async {
    // var res = await _firebaseFirestore.collection(email).doc('user Data').set({
    //   "user id": email,
    // });
    // return res;
  }
}
