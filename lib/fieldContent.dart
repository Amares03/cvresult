// ignore_for_file: file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class FieldContent extends StatelessWidget {
  final String name;
  FieldContent({required this.name});
  late String _value;
  TextEditingController _controller = TextEditingController();
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
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: name.toUpperCase(),
              // hintStyle: TextStyle(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kTextFieldColor)),
              fillColor: kTextFieldColor,
              filled: true,
            ),
            minLines: null,
            maxLines: null,
            expands: true,
            keyboardType: TextInputType.text,
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

  String getController() {
    return _controller.toString();
  }
}
