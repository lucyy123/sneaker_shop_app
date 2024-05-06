// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //*-------------------------- image --------------------
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              SizedBox(
                height: 50,
              ),

              //*--------------  title-------------------

              const Text(
                "Just Do it",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),

              SizedBox(
                height: 50,
              ),

              //*--------------- sub title -----------------------

              const Text(
                'Brand new sneakera and custom kicks made with premium quality',
                style: TextStyle(color: Colors.grey, fontSize: 17),
                textAlign: TextAlign.center,
              ),

              //*--------------------- go to button --------------------------
              SizedBox(
                height: 50,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17),
                      ),
                    ),
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
