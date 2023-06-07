import 'package:flutter/material.dart';
import 'package:moniepoint_test/repos/product_repo.dart';

// ignore: must_be_immutable
class ProductTitle extends StatelessWidget {
  String title;
  double? size;
  ProductTitle({super.key, required this.title, this.size = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      ProductRepo().trimTitle(title),
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
