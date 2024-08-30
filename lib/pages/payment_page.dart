import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/back_button.dart';
import 'package:geulis_digitalk/widgets/geulis_appbar.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int? selectedIndex;

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
              const BackToButton(text: "Payment Method", width: 60),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                          width: double.infinity,
                          height: 80,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: paymentBorderColor)),
                          child: Row(
                            children: [
                              Image.asset("assets/images/payment-bca.png"),
                              const SizedBox(
                                width: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Mobile Banking",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "**** **** 0998 7865",
                                    style: TextStyle(color: paymentTextColor),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  side: BorderSide(color: searchHintColor),
                                  value: selectedIndex == index,
                                  shape: const CircleBorder(),
                                  activeColor: Colors.red,
                                  onChanged: (value) {
                                    setState(() {
                                      if (value == true) {
                                        selectedIndex = index;
                                      } else {
                                        selectedIndex = null;
                                      }
                                    });
                                  },
                                ),
                              )
                            ],
                          ));
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                    itemCount: 6),
              ),
              if (selectedIndex != null)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  height: 120,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: TextButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: textColor,
                    ),
                    child: const Text(
                      "Confirm",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
