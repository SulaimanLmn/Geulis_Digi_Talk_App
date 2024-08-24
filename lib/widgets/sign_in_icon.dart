import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class SignInIcon extends StatelessWidget {
  final String imageUrl;
  const SignInIcon({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: loginIconBackgroundColor,
        border: Border.all(color: textColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
