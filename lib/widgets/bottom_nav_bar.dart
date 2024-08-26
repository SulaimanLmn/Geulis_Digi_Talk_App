import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/bloc/page_nav_bar_bloc.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final PageNavBarBloc pageNavBloc = BlocProvider.of<PageNavBarBloc>(context);
    return BottomAppBar(
      height: 75,
      color: homePageButtonColor,
      notchMargin: 7,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              GestureDetector(
                  onTap: () => pageNavBloc.add(PageNavChanged(curentIndex: 0)),
                  child: const Icon(
                    IconlyLight.home,
                    size: 30,
                  )),
              const Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                  onTap: () => pageNavBloc.add(PageNavChanged(curentIndex: 1)),
                  child: const Icon(
                    Icons.newspaper,
                    size: 30,
                  )),
              const Text(
                "Feeds",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Container(
            width: 60,
            height: 50,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 25, left: 7),
            child: const Text(
              "Scan",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                  onTap: () => pageNavBloc.add(PageNavChanged(curentIndex: 2)),
                  child: const Icon(
                    Icons.book,
                    size: 30,
                  )),
              const Text(
                "History",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                  onTap: () => pageNavBloc.add(PageNavChanged(curentIndex: 3)),
                  child: const Icon(
                    IconlyLight.profile,
                    size: 30,
                  )),
              const Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
