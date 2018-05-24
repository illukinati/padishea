import 'package:flutter/material.dart';
import 'package:padishea/screens/splash_screen.dart';
import 'package:padishea/navigations/padishea_navigator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(),
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal[200],
      ),
      routes: PadisheaNavigator.routes,
    );
  }
}
