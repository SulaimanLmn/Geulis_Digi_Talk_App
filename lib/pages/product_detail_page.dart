import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/bloc/product_cart_bloc.dart';
import 'package:geulis_digitalk/models/product_model.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/product_detail_review.dart';
import 'package:iconly/iconly.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.productData});
  final ProductModel productData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              IconlyLight.heart,
              size: 40,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            alignment: Alignment.center,
            child: Transform.scale(
              scale: 2.5,
              child: Image.asset(
                productData.image,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        productData.brandName,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      "Rp.${productData.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  productData.productName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 20),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Details",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                Text(productData.description),
                const SizedBox(height: 10),
                const Text(
                  "Review",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "4.5 ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: "(102)",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Icon(
                        Icons.star,
                        color: buttonColor,
                        size: 35,
                      );
                    },
                    itemCount: 4,
                  ),
                ),
                const SizedBox(height: 15),
                const ProductDetailReview(),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          color: Colors.white,
                          style: IconButton.styleFrom(
                            backgroundColor: homePageButtonColor,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushNamed('/cartpage'),
                          icon: Transform.scale(
                            scale: 1.4,
                            child: const Icon(
                              IconlyLight.bag_2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Expanded(
                        flex: 4,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: textColor,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            context
                                .read<ProductCartBloc>()
                                .add(ProductCartAdded(product: productData));
                            Navigator.of(context).pushNamed('/cartpage');
                          },
                          child: const Text(
                            "BUY NOW",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
