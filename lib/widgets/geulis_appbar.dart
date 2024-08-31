import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          padding: const EdgeInsets.only(left: 25),
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset("assets/images/Geulis.png"),
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('/cartpage'),
                child: const Icon(
                  IconlyLight.bag_2,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
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
