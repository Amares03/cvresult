import 'package:cloud_firestore/cloud_firestore.dart';

class AddToDatabase {
  CollectionReference users = FirebaseFirestore.instance.collection('all_info');
  String? text;
  final String name,
      dbo,
      phone,
      passportNum,
      sex,
      collectedDate,
      resultDate,
      drName;

  AddToDatabase(
      {required this.dbo,
      required this.name,
      required this.phone,
      required this.passportNum,
      required this.sex,
      required this.collectedDate,
      required this.resultDate,
      required this.drName});
  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'collectedDate': collectedDate,
          'collectedLocation': 'ICL-AA1',
          'dbo': dbo,
          'name': name,
          'nationality': 'ETHIOPIA',
          'passportNum': passportNum,
          'phone': phone,
          'result': 'NEGATIVE',
          'resultDate': resultDate,
          'reviewdBy': drName,
          'sampleId': 'WD4587133',
          'sex': sex,
          'specimenType': 'Nasopharngeal Swab',
          'testMethod': 'RT-PCR-QUALITATIVE Detection of nucleic Acid ',
          'testPerformedBy': 'International Clinical Laburatory',
          'time':FieldValue.serverTimestamp()
        })
        .then((value) => text = 'User Added')
        .catchError((error) => text = 'Failed to add user: $error');
  }

  bool isAdded() {
    if (text == 'User Added') {
      return true;
    } else {
      return false;
    }
  }
}
