import 'package:flutter/material.dart';
import 'package:padishea/screens/login_screen.dart';
import 'package:padishea/screens/main_screen.dart';

class PadisheaNavigator {
  static final routes = <String, WidgetBuilder>{
    '/login': (BuildContext context) => LoginScreen(),
    '/main': (BuildContext context) => MainScreen(),
  };

  static void goToLogin(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, '/login', (Route<dynamic> route) => false);
  }

  static void gotoMain(BuildContext context) {
    Navigator.pushNamed(context, '/main');
  }
}
