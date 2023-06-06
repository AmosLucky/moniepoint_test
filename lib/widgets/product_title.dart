import 'package:flutter/material.dart';
import 'package:moniepoint_test/repos/product_repo.dart';

// ignore: must_be_immutable
class ProductTitle extends StatelessWidget {
  String title;
  ProductTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      ProductRepo().trimTitle(title),
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
