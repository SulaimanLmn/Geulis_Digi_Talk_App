import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class ProductCheckoutItem extends StatelessWidget {
  const ProductCheckoutItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: cartProductBorderColor,
        ),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/product-detail-skintific.png"),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "SKEENTIPIK",
                  style: TextStyle(color: productCartNameColor),
                ),
                const Text(
                  "5x Ceramide Moisturizer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Rp 120.000",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "1 Pcs",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
