// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/Shoe.dart';
import 'package:sneaker_shop_app/models/cart.dart';

class ListCartTile extends StatefulWidget {
  Shoe shoe;
  ListCartTile({super.key, required this.shoe});

  @override
  State<ListCartTile> createState() => _ListCartTileState();
}

class _ListCartTileState extends State<ListCartTile> {
  void handleRemoveShoeFromCart() {
    log("handle delete press");
    Provider.of<Cart>(context, listen: false).removefromCart(widget.shoe);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Deleted "),
          content: Text("Your item is remove form cart"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
              icon: Icon(Icons.delete), onPressed: handleRemoveShoeFromCart),
        ),
      ),
    );
  }
}
