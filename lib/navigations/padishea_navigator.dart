import 'package:flutter/material.dart';
import 'package:padishea/screens/welcome_screen.dart';
import 'package:padishea/screens/main_screen.dart';
import 'package:padishea/screens/login_screen.dart';
import 'package:padishea/screens/history_screen.dart';
import 'package:padishea/screens/edit_profile_screen.dart';
import 'package:padishea/screens/notification_screen.dart';

class PadisheaNavigator {
  static final routes = <String, WidgetBuilder>{
    '/welcome': (BuildContext context) => WelcomeScreen(),
    '/main': (BuildContext context) => MainScreen(),
    '/login': (BuildContext context) => LoginScreen(),
    '/history': (BuildContext context) => HistoryScreen(),
    '/edit': (BuildContext context) => EditProfileScreen(),
    '/notification': (BuildContext context) => NotificationScreen(),
  };

  static void goToWelcome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, '/welcome', (Route<dynamic> route) => false);
  }

  static void gotoMain(BuildContext context) {
    Navigator.of(context).pushNamed('/main');
  }

  static void goToLogin(BuildContext context){
    Navigator.of(context).pushNamed('/login');
  }

  static void goToHistory(BuildContext context){
    Navigator.of(context).pushNamed('/history');
  }

  static void goToEditProfile(BuildContext context){
    Navigator.of(context).pushNamed('/edit');
  }

  static void goToNotification(BuildContext context){
    Navigator.of(context).pushNamed('/notification');
  }
}
