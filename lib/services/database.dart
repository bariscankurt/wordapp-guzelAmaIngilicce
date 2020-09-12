import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  // collection reference
  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");

  Future updateUserData(String userName, int userPoint) async{
    return await userCollection.doc(uid).set({
      "userName": userName,
      "userPoint": userPoint,
    });
  }
}