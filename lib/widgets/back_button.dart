import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class BackToButton extends StatelessWidget {
  const BackToButton({super.key, required this.text, required this.width});
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: textColor,
              ),
              Text(
                "Back",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              )
            ],
          ),
        ),
        SizedBox(
          width: width,
        ),
        Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
