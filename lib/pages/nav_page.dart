import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/bloc/page_nav_bar_bloc.dart';
import 'package:geulis_digitalk/pages/feeds_page.dart';
import 'package:geulis_digitalk/pages/history_page.dart';
import 'package:geulis_digitalk/pages/home_page.dart';
import 'package:geulis_digitalk/pages/profile_page.dart';
import 'package:geulis_digitalk/widgets/bottom_nav_bar.dart';

class NavPage extends StatelessWidget {
  NavPage({super.key});

  final List<Widget> pages = [
    const HomePage(),
    const FeedsPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageNavBarBloc, int>(
      builder: (context, curentIndex) {
        return Scaffold(
          body: pages[curentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            elevation: 0,
            enableFeedback: false,
            shape: const CircleBorder(),
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Transform.scale(
                scale: 1.2,
                child: Image.asset("assets/images/scan-face-icon.png"),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
