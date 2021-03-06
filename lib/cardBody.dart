// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'fieldContent.dart';
import 'databaseNetwork/addToDatabase.dart';
// import 'package:firebase_core/firebase_core.dart';

class BodyCard extends StatefulWidget {
  @override
  State<BodyCard> createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  String? confermText;
  FieldContent fName = FieldContent(
    name: 'Full Name',
  );
  FieldContent fDbo = FieldContent(
    name: 'DBO',
  );
  FieldContent fPassportNum = FieldContent(
    name: 'Passport Number',
  );
  FieldContent fSex = FieldContent(
    name: 'Sex',
  );
  FieldContent fCollectedDate = FieldContent(
    name: 'Specimen Collected Date',
  );
  FieldContent fResultDate = FieldContent(
    name: 'Result Issued Date',
  );
  FieldContent fPhoneNum = FieldContent(
    name: 'Phone Number',
  );
  FieldContent fDrName = FieldContent(
    name: 'Doctor Name',
  );
  var formKey = GlobalKey<FormState>();

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
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          fName,
                          fDbo,
                          fPassportNum,
                          fSex,
                          fCollectedDate,
                          fResultDate,
                          fPhoneNum,
                          fDrName,
                          SizedBox(
                            height: 15.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (fName.getController().length > 3) {
                                AddToDatabase add = AddToDatabase(
                                    dbo: fDbo.getValue(),
                                    name: fName.getValue(),
                                    phone: fPhoneNum.getValue(),
                                    passportNum: fPassportNum.getValue(),
                                    sex: fSex.getValue(),
                                    collectedDate: fCollectedDate.getValue(),
                                    resultDate: fResultDate.getValue(),
                                    drName: fDrName.getValue());
                                add.addUser();
                                setState(() {
                                  formKey.currentState!.reset();
                                });
                              }
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
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
