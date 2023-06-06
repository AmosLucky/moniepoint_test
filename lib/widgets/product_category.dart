import 'package:flutter/material.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class ProductCategory extends StatelessWidget {
  String text;
  ProductCategory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, color: grey2, fontWeight: FontWeight.w500),
    );
  }
}
