import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/back_button.dart';
import 'package:geulis_digitalk/widgets/geulis_appbar.dart';
import 'package:geulis_digitalk/widgets/product_checkout_item.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GeulisAppBar(),
              const SizedBox(
                height: 25,
              ),
              const BackToButton(
                width: 85,
                text: "Checkout",
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 600,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: TextStyle(
                            fontSize: 20,
                            color: textColor,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Daniel Marsh - 085123457865",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Kenangan Ave. No. 34 Block H Cemara",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Text(
                        "Tujuh residence, Bandung, West Java",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Voucher",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: textColor),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: voucherBorderColor,
                        )),
                        child: Row(
                          children: [
                            const Text(
                              "% Reedeem Voucher",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 22),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Summary Order ",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "(1 Item)",
                              style: TextStyle(color: textColor, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return const ProductCheckoutItem();
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: 10,
                                ),
                            itemCount: 1),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Payment Method",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: voucherBorderColor,
                        )),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.credit_card,
                              size: 40,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Select Payment Method",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 22),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed('/paymentpage'),
                                icon: const Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Text(
                            "Rp 259.500",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "Shipping Cost",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Text(
                            "Rp 9.500",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Divider(
                        height: 10,
                        color: textColor,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "Rp 269.000",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 60,
                margin: const EdgeInsets.all(15),
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/packagingpage'),
                  child: const Text(
                    "PLACE ORDER",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
