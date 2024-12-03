// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.textFieldHint, this.maxLines = 1});
  final String textFieldHint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
              hintText: textFieldHint,
              hintStyle: TextStyle(
                color: kPrimaryColor,
              ),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(kPrimaryColor)),
          cursorColor: kPrimaryColor,
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
