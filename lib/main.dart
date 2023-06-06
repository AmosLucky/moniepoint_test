import 'package:flutter/material.dart';
import 'package:moniepoint_test/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'constants/app_variables.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: appName,
        home: SplashScreen(),
      ),
    );
  }
}
