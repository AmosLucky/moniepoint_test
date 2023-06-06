import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';
import 'package:moniepoint_test/repos/product_repo.dart';

// ignore: must_be_immutable
class Price extends StatelessWidget {
  dynamic price;
  Price({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      ProductRepo().addDollar(price),
      style: TextStyle(
          color: lightBlue, fontWeight: FontWeight.bold, fontSize: 17),
    );
  }
}
