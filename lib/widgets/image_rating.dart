import 'package:flutter/material.dart';

class ImageRating extends StatelessWidget {
  String image;
   ImageRating({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        child: Image.asset(image)),
    );
  }
}
