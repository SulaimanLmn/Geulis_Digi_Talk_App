import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class OrderProductItem extends StatelessWidget {
  final String message;
  const OrderProductItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 25),
          padding: const EdgeInsets.only(left: 15),
          width: double.infinity,
          height: 70,
          child: Row(
            children: [
              Image.asset('assets/images/product-skeentipik-ceramide.png'),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "SKINTIFIC 5x Ceramide Moisturizer",
                maxLines: 1,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Text(
            "x1",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Text(
            "Rp 120.000",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Text(
              "2 products",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: "Total Payment : ",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  TextSpan(
                      text: "Rp 189.000",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600))
                ],
              ),
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Transform.scale(
              scale: 1.2,
              child: Image.asset('assets/images/profile-delivery.png'),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(message)
          ],
        ),
        const Divider(),
        Container(
          margin: const EdgeInsets.all(10),
          alignment: AlignmentDirectional.bottomEnd,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: textColor,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: Text(
                "Contact Seller",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 3,
          color: Colors.grey.withOpacity(0.2),
        ),
      ],
    );
  }
}
