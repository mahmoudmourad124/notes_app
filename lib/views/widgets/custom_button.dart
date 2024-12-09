import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonTitle, this.onTap});
  final String buttonTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          buttonTitle,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
