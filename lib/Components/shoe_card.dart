// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/Shoe.dart';

class ShoeCard extends StatelessWidget {
  Shoe shoe;
  final onTap;
  ShoeCard({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          // border: Border.all(color: Theme.of(context).colorScheme.primary),
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(13)),
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //*---------------------  shoe  image -------------
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13), topRight: Radius.circular(13)),
            child: Container(
              height: 150,
              color: Theme.of(context).colorScheme.primary,
              width: double.maxFinite,
              child: Image.asset(
                shoe.imagePath,
                // height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //* ----------------- shoe discription
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(shoe.discription),
          ),
          //* ----------------------  shoe name + price
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //?shoe name
                      Text(
                        shoe.name,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //? shoe price
                      Text("Rs.${shoe.price}",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  //* a button to add cart
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13.0),
                              bottomRight: Radius.circular(13.0))),
                      child: Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
