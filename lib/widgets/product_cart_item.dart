import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/bloc/product_cart_bloc.dart';
import 'package:geulis_digitalk/models/product_model.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:iconly/iconly.dart';

class ProductCartItem extends StatelessWidget {
  const ProductCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCartBloc, List<ProductModel>>(
      builder: (context, cart) {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(IconlyLight.delete),
                        const SizedBox(
                          width: 15,
                        ),
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
                                  border:
                                      Border.all(color: homePageButtonColor),
                                ),
                                child: const Icon(Icons.minimize),
                              ),
                              const Text(
                                "1",
                                style: TextStyle(
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
      },
    );
  }
}
