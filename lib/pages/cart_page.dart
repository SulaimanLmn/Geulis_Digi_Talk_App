import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/back_button.dart';
import 'package:geulis_digitalk/widgets/geulis_appbar.dart';
import 'package:geulis_digitalk/widgets/product_cart_item.dart';
import 'package:geulis_digitalk/bloc/product_cart_bloc.dart';
import 'package:geulis_digitalk/models/product_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(
            children: [
              const GeulisAppBar(),
              const SizedBox(
                height: 25,
              ),
              const BackToButton(
                text: "My Shopping Bag",
                width: 60,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: BlocBuilder<ProductCartBloc, List<ProductModel>>(
                    builder: (context, cart) {
                      return ListView.separated(
                        itemBuilder: (context, index) {
                          return ProductCartItem(product: cart[index]);
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                        itemCount: cart.length,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Rp 240.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 160,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: textColor,
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/checkoutpage');
                        },
                        child: const Text(
                          "Checkout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
