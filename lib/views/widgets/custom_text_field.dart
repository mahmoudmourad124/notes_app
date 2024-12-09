import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.textFieldHint,
      this.maxLines = 1,
      this.onSaved});
  final String textFieldHint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onSaved: onSaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Field is required';
            } else {
              return null;
            }
          },
          maxLines: maxLines,
          decoration: InputDecoration(
              hintText: textFieldHint,
              hintStyle: const TextStyle(
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
