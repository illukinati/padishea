import 'package:flutter/material.dart';
import 'dart:async';
import 'package:padishea/navigations/padishea_navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => PadisheaNavigator.goToWelcome(context));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Container(
                width: 30.0,
                height: 30.0,
                child: new Image(image: new AssetImage("assets/farmer.png")),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: new CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
