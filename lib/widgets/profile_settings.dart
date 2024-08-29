import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:iconly/iconly.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({
    super.key,
  });

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: profileIconColor),
                  child: const Icon(IconlyLight.profile),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Account",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Make changes to your account",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.warning,
                  color: Colors.red,
                  size: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: profileIconColor),
                  child: const Icon(Icons.home),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Manage your address delivery",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: profileIconColor),
                  child: const Icon(IconlyLight.lock),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Face ID / Touch ID",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Manage your device security",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                const SizedBox(
                  width: 20,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: profileIconColor),
                  child: const Icon(Icons.security),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Two-Factor Authentication",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Further Secure your account for safety",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: profileIconColor),
                  child: const Icon(Icons.exit_to_app),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Further Secure your account for safety",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
