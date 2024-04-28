import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/Shoe.dart';

class Cart extends ChangeNotifier {
//?-------------------------- list of all shoes ---------------------

  List<Shoe> allShoes = [
    Shoe(
        name: "Air Jordans",
        discription:
            "Iconic basketball shoes with a sleek design and superior performance, known for their association with Michael Jordan.",
        price: "4500",
        imagePath: "assets/images/airjordan.jpeg"),
    Shoe(
        name: "KD Treys",
        discription:
            "Offering lightweight support and responsive cushioning for quick cuts and jumps on the court.",
        price: "9630",
        imagePath: "assets/images/nikeair.jpeg"),
    Shoe(
        name: "Kyrie 6",
        discription:
            "The Kyrie 6 is a basketball shoe known for its traction, support, and responsiveness, designed for quick and agile players like Kyrie Irving.",
        price: "15200",
        imagePath: "assets/images/runnerNike.jpeg"),
    Shoe(
        name: "Zoom FREAK",
        discription:
            "The Zoom Freak is a basketball shoe known for its comfortable cushioning and traction, designed for explosive players like Giannis Antetokounmpo.",
        price: "4500",
        imagePath: "assets/images/airjordan.jpeg"),
    Shoe(
        name: "Stylish N",
        discription:
            "Designed for explosive players like Giannis Antetokounmpo.",
        price: "8900",
        imagePath: "assets/images/nikeshoes3.jpeg"),
  ];

//?-------------- get all shoes list --------------

  List<Shoe> getshoesList() {
    return allShoes;
  }

//?---------------------------- list of shoes in cart -----------------------

  List<Shoe> cartshoeList = [];

  //?------------------------------- get shoes in cart --------------------
  List<Shoe> getCartshoeList() {
    return cartshoeList;
  }

  //?--------------------------------- add shoe in cart -----------------

  void addtoCart(Shoe shoe) {
    cartshoeList.add(shoe);
    notifyListeners();
  }

  //!------------------- remove the shoe from cart-------------------

  void removefromCart(Shoe shoe) {
    cartshoeList.remove(shoe);
    notifyListeners();
  }
}
