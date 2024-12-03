import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor,
      ),
      height: 50,
      width: 500,
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }
}
