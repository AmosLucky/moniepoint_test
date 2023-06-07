import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/colors.dart';

class navigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: whiteColor,
      selectedItemColor: primaryColor,
      unselectedItemColor: blackColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('Home'),
          //backgroundColor: Colors.green
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ('Voucher'),
            backgroundColor: Colors.yellow),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: ('Wallet'),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: ('Settings'),
          backgroundColor: Colors.blue,
        )
      ],
      type: BottomNavigationBarType.shifting,
    );
    ;
  }
}
