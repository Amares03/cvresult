import 'package:cloud_firestore/cloud_firestore.dart';

class AddToDatabase {
  CollectionReference users =
      FirebaseFirestore.instance.collection('client_info');
  String text = 'not added';
  final String name, dbo, nationality, passportNum, sex;
  final int phoneNum;
  AddToDatabase(
      {required this.dbo,
      required this.name,
      required this.nationality,
      required this.passportNum,
      required this.sex,
      required this.phoneNum});
  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'dbo': dbo,
          'name': name,
          'nationality': nationality,
          'passportnum': passportNum,
          'phonenum': phoneNum,
          'sex': sex,
        })
        .then((value) => text = 'User Added')
        .catchError((error) => print("Failed to add user: $error"));
  }
}
