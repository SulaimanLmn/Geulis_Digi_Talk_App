import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class GeulisAppBar extends StatelessWidget {
  const GeulisAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          IconlyLight.notification,
          size: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset("assets/images/Geulis.png"),
          ),
        ),
        const SizedBox(
          child: Row(
            children: [
              Icon(
                IconlyLight.bag_2,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                IconlyLight.heart,
                size: 30,
              )
            ],
          ),
        ),
      ],
    );
  }
}
