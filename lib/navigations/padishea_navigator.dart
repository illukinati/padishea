import 'package:flutter/material.dart';
import 'package:padishea/screens/welcome_screen.dart';
import 'package:padishea/screens/main_screen.dart';
import 'package:padishea/screens/login_screen.dart';

class PadisheaNavigator {
  static final routes = <String, WidgetBuilder>{
    '/welcome': (BuildContext context) => WelcomeScreen(),
    '/main': (BuildContext context) => MainScreen(),
    '/login': (BuildContext context) => LoginScreen(),
  };

  static void goToWelcome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, '/welcome', (Route<dynamic> route) => false);
  }

  static void gotoMain(BuildContext context) {
    Navigator.pushNamed(context, '/main');
  }

  static void goToLogin(BuildContext context){
    Navigator.pushNamed(context, '/login');
  }
}
