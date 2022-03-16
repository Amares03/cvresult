// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:cvresult/fieldContent.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BodyCard());
  }
}

class BodyCard extends StatefulWidget {
  @override
  State<BodyCard> createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Card(
            margin: EdgeInsets.all(40.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Covid-19 Result Confirmation',
                    style: kTitleTextStyle,
                  ),
                  FieldContent(name: 'Full Name'),
                  FieldContent(name: 'Nationality'),
                  FieldContent(name: 'Passport Number'),
                  FieldContent(name: 'Confirmation Number'),
                  FieldContent(name: 'Specimen Collected Date'),
                  FieldContent(name: 'Result Issued Date'),
                  // SizedBox(
                  //   height: 25.0,
                  // ),
                  Text(
                    'Result',
                    style: textStyle,
                  ),
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Center(
                        child: Text(
                          'Get Full Certification',
                          style: kButtonTextStyle,
                        ),
                      ),
                      color: kButtonCardColor,
                      margin: EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.only(bottom: 10.0),
                      // width: 100.0,
                      height: kTextFieldHeight,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
