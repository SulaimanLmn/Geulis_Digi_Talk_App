import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class RegisterTextField extends StatelessWidget {
  final String hintText;
  const RegisterTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: textFieldColor,
          ),
          color: Colors.white),
      child: TextFormField(
        showCursor: false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 15, color: textFieldColor),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 11, horizontal: 20),
        ),
      ),
    );
  }
}
