import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';

class ProfileOrder extends StatelessWidget {
  const ProfileOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.notes,
                  color: textColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "My Order",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                )
              ],
            ),
          ),
          Divider(
            color: profileDividerColor,
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/packagingpage'),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: profileIconColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Transform.scale(
                        scale: 1.2,
                        child:
                            Image.asset('assets/images/profile-packages.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Packaging")
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: profileIconColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Image.asset('assets/images/profile-delivery.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("On Delivery")
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: profileIconColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Transform.scale(
                      scale: 2,
                      child: Image.asset('assets/images/profile-rating.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Rating")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
