import 'package:flutter/material.dart';
import 'package:geulis_digitalk/widgets/order_product_item.dart';

class PackagingPage extends StatelessWidget {
  const PackagingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (context, index) {
          return const OrderProductItem(
            message: "your package is on packing",
          );
        },
        itemCount: 1,
      ),
    );
  }
}
