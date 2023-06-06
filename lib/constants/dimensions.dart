import 'package:flutter/material.dart';

class Dimensions {
  double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
   double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
