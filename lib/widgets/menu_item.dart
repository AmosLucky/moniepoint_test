import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';

// ignore: must_be_immutable
class MenuItem extends StatelessWidget {
  IconData icon;
  String title;
  MenuItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Card(
            color: lightGrey,
            child: Container(padding: EdgeInsets.all(3), child: Icon(icon)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(color: lightBlack),
          )
        ],
      ),
    );
  }
}
