// ignore_for_file: file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class FieldContent extends StatelessWidget {
  final String name;
  FieldContent({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: textStyle,
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          height: kTextFieldHeight,
          color: kTextFieldColor,
          // child: Text('Amir Siraj'),
        ),
      ],
    );
  }
}
