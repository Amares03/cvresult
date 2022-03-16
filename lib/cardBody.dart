// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'fieldContent.dart';

class BodyCard extends StatefulWidget {
  @override
  State<BodyCard> createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  FieldContent fieldContent = FieldContent(
    name: 'Full Name',
    type: TextInputType.name,
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
                    fieldContent,
                    FieldContent(
                      name: 'Nationality',
                      type: TextInputType.text,
                    ),
                    FieldContent(
                      name: 'Passport Number',
                      type: TextInputType.text,
                    ),
                    FieldContent(
                      name: 'Confirmation Number',
                      type: TextInputType.text,
                    ),
                    FieldContent(
                      name: 'Specimen Collected Date',
                      type: TextInputType.datetime,
                    ),
                    FieldContent(
                      name: 'Result Issued Date',
                      type: TextInputType.name,
                    ),
                    FieldContent(
                      name: 'Result',
                      type: TextInputType.text,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        // myText = fieldContent.getValue();
                        // print(fieldContent.getValue());
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
