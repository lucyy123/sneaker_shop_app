// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomBar extends StatelessWidget {
  void Function(int)? handlOnTabChange;
  MyBottomBar({super.key, required this.handlOnTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        activeColor: Colors.black,
        padding: EdgeInsets.all(15),
        tabBackgroundColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBorderRadius: 10,
        onTabChange: (value) => handlOnTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
