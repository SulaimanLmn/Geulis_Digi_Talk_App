import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:iconly/iconly.dart';

class GeulisSearchBar extends StatelessWidget {
  const GeulisSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: 45,
            color: searchColor,
            child: TextField(
              showCursor: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: searchHintColor,
                ),
                hintText: "Search Products",
                hintStyle: TextStyle(color: searchHintColor),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 60,
          height: 50,
          decoration: BoxDecoration(
            color: homePageButtonColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(IconlyLight.filter),
        ),
      ],
    );
  }
}
