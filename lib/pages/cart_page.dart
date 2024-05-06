// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/Components/cart_tile.dart';
import 'package:sneaker_shop_app/models/Shoe.dart';
import 'package:sneaker_shop_app/models/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //*------------------- Title-----------

          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          SizedBox(
            height: 20,
          ),
//? ------------------- Cart shoe tile--------------------

          Expanded(
              child: ListView.builder(
            itemCount: value.cartshoeList.length,
            itemBuilder: (context, index) {
              Shoe cart_shoe = value.getCartshoeList()[index];

              return ListCartTile(shoe: cart_shoe);
            },
          ))
        ],
      );
    });
  }
}
