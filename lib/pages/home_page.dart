// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/Components/bottom_bar.dart';
import 'package:sneaker_shop_app/pages/cart.dart';
import 'package:sneaker_shop_app/pages/shop.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//* this selected index handle to selecting the nav bar
  int _selectedIndex = 0;

//? this is for changing the pages when tap
  void handleNavigatingBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//* Pages to display

  final List<Widget> _pages = [
//! shop page

    const Shop(),

//! cart page
    const Cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomBar(
        handlOnTabChange: (index) => handleNavigatingBar(index),
      ),
    );
  }
}
