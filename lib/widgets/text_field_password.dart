import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class TextFieldPassword extends StatefulWidget {
  final bool isObscure;

  const TextFieldPassword({
    super.key,
    required this.isObscure,
  });

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: textFieldColor,
        ),
        color: Colors.white,
      ),
      child: TextFormField(
        showCursor: false,
        obscureText: _isObscure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            icon: _isObscure
                ? Icon(
                    Icons.visibility,
                    color: textFieldColor,
                  )
                : Icon(
                    Icons.visibility_off,
                    color: textFieldColor,
                  ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(fontSize: 15, color: textFieldColor),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }
}
