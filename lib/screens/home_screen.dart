import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: whiteColor,
      ),
      body: Container(
        child: Column(children: [
          Container(
            height: 280,
            color: Colors.amber,
          ),
          Container(
            

          )
        ]),
      ),
    );
  }
}
