// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/Components/shoe_card.dart';
import 'package:sneaker_shop_app/models/Shoe.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
//* search bar
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child:
                      Text("Search...", style: TextStyle(color: Colors.grey)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_sharp),
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),

//*sub-title

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone flies... some fly longer than others',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        )

//* hot pick title
        ,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
              Text(
                "see all",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 15,
        ),
//*---------------------------- list of all shoes

        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  Shoe myshoe = Shoe(
                      name: "Air Jordan",
                      discription: "some air make the mood light",
                      price: "7200",
                      imagePath: "assets/images/nikeair.jpeg");
                  return ShoeCard(shoe: myshoe);
                })),

        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Divider(
            color: Colors.transparent,
          ),
        )
      ],
    );
  }
}
