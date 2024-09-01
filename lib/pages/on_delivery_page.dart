import 'package:flutter/material.dart';
import 'package:geulis_digitalk/widgets/order_product_item.dart';

class OnDeliveryPage extends StatelessWidget {
  const OnDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (context, index) {
          return const OrderProductItem(
            message: "your package is on the way to cakung dc",
          );
        },
        itemCount: 2,
      ),
    );
  }
}
