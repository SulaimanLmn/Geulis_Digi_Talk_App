import 'package:flutter/material.dart';
import 'package:geulis_digitalk/models/product_model.dart';
import 'package:geulis_digitalk/theme/color.dart';

class ProductCartItem extends StatelessWidget {
  final ProductModel product;

  const ProductCartItem({
    super.key,
    required this.product,
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
          Image.asset(product.image),
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
                  product.brandName,
                  style: TextStyle(color: productCartNameColor),
                ),
                Text(
                  product.productName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rp ${product.price}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 25,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: homePageButtonColor),
                            ),
                            child: const Icon(Icons.minimize),
                          ),
                          Text(
                            "${product.quantity}",
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: textColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
