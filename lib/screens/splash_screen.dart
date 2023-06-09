

import 'package:flutter/material.dart';
import 'package:moniepoint_test/constants/app_variables.dart';


import '../repos/navigatore.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  dynamic controler;
  dynamic animation;
  bool isError = false;

  void initState() {
    controler =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween(begin: 0.0, end: 1.0).animate(controler);
    controler.forward();

    Navigators().finishSpashScreen(context);
    super.initState();
  }

  @override
  void dispose() {
    controler.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: animation,
                // child: Image.asset(
                //   GetAssts.getImage("logo1.png"),
                //   width: 200,
                // )
                child: Text(
                  appName,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Interval(0.5, 1.0),
                  ),
                ),
                child: Text(
                  slogan,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
