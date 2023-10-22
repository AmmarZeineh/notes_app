import 'package:flutter/material.dart';
import 'package:notestest/constant.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key, required this.contentPadding, required this.hint});
  final EdgeInsetsGeometry contentPadding;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            focusedBorder: buildBorder(kPrimaryColor),
            enabledBorder: buildBorder(),
            border: buildBorder(),
            hintText: hint,
            hintStyle: const TextStyle(color: kPrimaryColor, fontSize: 20),
            contentPadding: contentPadding),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
