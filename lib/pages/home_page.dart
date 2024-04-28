// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/Components/bottom_bar.dart';
import 'package:sneaker_shop_app/pages/cart_page.dart';
import 'package:sneaker_shop_app/pages/shop_page.dart';

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
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
                onPressed: () {
                  print("on press button is pressed");
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              //!--------------  logo
              DrawerHeader(
                  child: Image.asset(
                "assets/images/drawerLogo.png",
                color: Colors.white,
                width: double.maxFinite,
              )),

              //*-------------------------- other Pages

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                  leading: Icon(Icons.home, color: Colors.white),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListTile(
                  title: Text(
                    "About",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                  leading: Icon(Icons.info, color: Colors.white),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
                leading: Icon(Icons.logout_outlined, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomBar(
        handlOnTabChange: (index) => handleNavigatingBar(index),
      ),
    );
  }
}
