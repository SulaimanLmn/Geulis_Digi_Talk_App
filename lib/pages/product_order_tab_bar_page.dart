import 'package:flutter/material.dart';
import 'package:geulis_digitalk/pages/on_delivery_page.dart';
import 'package:geulis_digitalk/pages/packaging_page.dart';
import 'package:geulis_digitalk/pages/rating_page.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/back_button.dart';
import 'package:geulis_digitalk/widgets/geulis_appbar.dart';

class ProductOrderTabBarPage extends StatelessWidget {
  const ProductOrderTabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(170),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                    child: const Column(
                      children: [
                        GeulisAppBar(),
                        SizedBox(
                          height: 20,
                        ),
                        BackToButton(text: "My Order", width: 90),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                    indicatorColor: textColor,
                    labelColor: textColor,
                    dividerHeight: 0.2,
                    tabs: const [
                      Tab(
                        text: "Packaging",
                      ),
                      Tab(
                        text: "On Delivery",
                      ),
                      Tab(
                        text: "Rating",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          body: const TabBarView(children: [
            PackagingPage(),
            OnDeliveryPage(),
            RatingPage(),
          ]),
        ));
  }
}
