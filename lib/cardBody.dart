// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'fieldContent.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

class BodyCard extends StatefulWidget {
  @override
  State<BodyCard> createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  FieldContent fieldContentName = FieldContent(
    name: 'Full Name',
    type: TextInputType.name,
  );
  FieldContent fieldContentNationality = FieldContent(
    name: 'Nationality',
    type: TextInputType.text,
  );
  FieldContent fieldContentPassportNum = FieldContent(
    name: 'Passport Number',
    type: TextInputType.text,
  );
  FieldContent fieldContentConfirmationNum = FieldContent(
    name: 'Confirmation Number',
    type: TextInputType.text,
  );
  FieldContent fieldContentCollectedDate = FieldContent(
    name: 'Specimen Collected Date',
    type: TextInputType.datetime,
  );
  FieldContent fieldContentResultDate = FieldContent(
    name: 'Result Issued Date',
    type: TextInputType.name,
  );
  FieldContent fieldContentResult = FieldContent(
    name: 'Result',
    type: TextInputType.text,
  );

  late String myText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue.shade900, width: 1),
            ),
            margin: EdgeInsets.all(40.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Covid-19 Result ',
                      style: kTitleTextStyle,
                    ),
                    Text(
                      'Confirmation',
                      style: kTitleTextStyle,
                    ),
                    fieldContentName,
                    fieldContentNationality,
                    fieldContentPassportNum,
                    fieldContentConfirmationNum,
                    fieldContentCollectedDate,
                    fieldContentResultDate,
                    fieldContentResult,
                    SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        AddToDatabase(
                            dbo: '22Y',
                            name: fieldContentName.getValue(),
                            nationality: fieldContentNationality.getValue(),
                            passportNum: fieldContentPassportNum.getValue(),
                            sex: 'male',
                            phoneNum: 09123456);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Get Full Certification',
                            style: kButtonTextStyle,
                          ),
                        ),
                        color: kButtonCardColor,
                        margin: EdgeInsets.only(top: 5.0),
                        padding: EdgeInsets.only(bottom: 10.0),
                        height: kTextFieldHeight,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class AddToDatabase {
  CollectionReference users =
      FirebaseFirestore.instance.collection('client_info');

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
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
