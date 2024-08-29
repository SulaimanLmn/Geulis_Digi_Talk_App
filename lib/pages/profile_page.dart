import 'package:flutter/material.dart';
import 'package:geulis_digitalk/widgets/geulis_appbar.dart';
import 'package:geulis_digitalk/widgets/profile_order.dart';
import 'package:geulis_digitalk/widgets/profile_settings.dart';
import 'package:geulis_digitalk/widgets/profile_user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: const Column(
            children: [
              GeulisAppBar(),
              SizedBox(
                height: 10,
              ),
              ProfileUser(),
              SizedBox(
                height: 10,
              ),
              ProfileOrder(),
              SizedBox(
                height: 10,
              ),
              ProfileSettings(),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
