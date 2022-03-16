// ignore_for_file: file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class FieldContent extends StatelessWidget {
  final String name;
  final TextInputType type;
  FieldContent({required this.name, required this.type});
  late String _value;
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
          height: 10.0,
        ),
        Container(
          height: kTextFieldHeight,
          child: TextField(
            decoration: InputDecoration(
              hintText: name.toUpperCase(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kTextFieldColor)),
              fillColor: kTextFieldColor,
              filled: true,
            ),
            minLines: null,
            maxLines: null,
            expands: true,
            keyboardType: type,
            onChanged: (text) {
              _value = text.toString();
            },
          ),
        )
      ],
    );
  }

  String getValue() {
    return _value;
  }
}
