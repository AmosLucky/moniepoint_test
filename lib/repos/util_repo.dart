import 'package:flutter/material.dart';
import 'package:moniepoint_test/main.dart';

class UtilRepo extends ChangeNotifier{
  


   navigateToScreen(BuildContext context, Widget child) {
    var route = MaterialPageRoute(builder: (BuildContext) => child);
    Navigator.push(context, route);
  }

  navigateToScreen2(Widget child) {
    var route = MaterialPageRoute(builder: (BuildContext) => child);
    navigatorKey.currentState!.push(route);
  }

  navigateReplaceScreen(BuildContext context, Widget child) {
    var route = MaterialPageRoute(builder: (BuildContext) => child);
    Navigator.pushReplacement(context, route);
  }

  navigateReplaceScreen2(Widget child) {
    var route = MaterialPageRoute(builder: (BuildContext) => child);
    navigatorKey.currentState?.pushReplacement(route);
  }

}