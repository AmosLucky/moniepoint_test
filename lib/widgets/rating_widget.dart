import 'package:flutter/material.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class RatingWidget extends StatelessWidget {
  String text;
  RatingWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 14, color: grey2, fontWeight: FontWeight.w500),
    );
  }
}
