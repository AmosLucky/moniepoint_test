import 'dart:async';

import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import 'util_repo.dart';

class Navigators{
  finishSpashScreen(BuildContext context){
    Timer(Duration(seconds: 3), () {
      //UserRepo().signInWithId(String user_id, context);
      UtilRepo().navigateReplaceScreen(context, HomeScreen());
    });
  }
}