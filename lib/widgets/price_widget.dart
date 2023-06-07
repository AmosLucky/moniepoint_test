import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/repos/product_repo.dart';

// ignore: must_be_immutable
class Price extends StatelessWidget {
  dynamic price;
  double size;

  Price({super.key, required this.price, this.size = 17});

  @override
  Widget build(BuildContext context) {
    return Text(
      ProductRepo().addDollar(price),
      style: TextStyle(
          color: lightBlue, fontWeight: FontWeight.bold, fontSize: size),
    );
  }
}
