import 'package:flutter/material.dart';
import 'package:moniepoint_test/widgets/price_widget.dart';

import '../constants/colors.dart';
import '../constants/dimensions.dart';

// ignore: must_be_immutable
class BottomWidget extends StatelessWidget {
  var price;
  BottomWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 30),
      width: Dimensions().getWidth(context),
      color: whiteColor,
      height: 90,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.centerLeft,
              child: Column(children: [
                Text("Total price"),
                Price(
                  price: price,
                  size: 30,
                )
              ]),
            ),
          ),
          //  Expanded(child: )
          Card(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  height: 40,
                  width: 50,
                  child: const Center(
                      child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  height: 40,
                  width: 100,
                  child: Center(
                      child: Text(
                    "Buy Now",
                    style: TextStyle(color: whiteColor),
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
