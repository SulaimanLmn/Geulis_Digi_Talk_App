import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/product_banner.dart';
import 'package:geulis_digitalk/widgets/geulis_appbar.dart';
import 'package:geulis_digitalk/widgets/geulis_search_bar.dart';
import 'package:geulis_digitalk/widgets/product_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GeulisAppBar(),
              const SizedBox(
                height: 20,
              ),
              const GeulisSearchBar(),
              const ProductBanner(),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Recommended For You",
                style: TextStyle(
                    fontSize: 20,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const ProductSection(),
            ],
          ),
        ),
      ),
    );
  }
}
