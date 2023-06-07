import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';

// ignore: must_be_immutable
class IconBadge extends StatelessWidget {
  IconData icon;
  String text;
  IconBadge({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Stack(
        children: [
          Icon(
            icon,
            size: 32,
          ),
          Container(
              alignment: Alignment.topRight,
              child: Card(
                  color: Colors.red,
                  child: Container(
                      width: 20,
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: whiteColor, fontWeight: FontWeight.bold),
                      ))))
        ],
      ),
    );
  }
}
