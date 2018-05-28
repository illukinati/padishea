import 'package:flutter/material.dart';
import 'package:padishea/navigations/padishea_navigator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              flex: 3,
              child: new Hero(
                tag: 'logo-padishea',
                child: new Container(
                  width: 200.0,
                  child: new Image.asset("assets/logo.jpg"),
                ),
              ),
            ),
            new Expanded(
              flex: 4,
              child: new Column(
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: new TextFormField(
                      autofocus: false,
                      decoration: new InputDecoration(
                        labelText: "Enter Email",
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 20.0),
                    child: new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Enter Password",
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: new Material(
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Colors.greenAccent.shade100,
                      elevation: 5.0,
                      child: new MaterialButton(
                        minWidth: 200.0,
                        height: 42.0,
                        onPressed: () {
                          PadisheaNavigator.gotoMain(context);
                        },
                        color: Colors.teal,
                        child: new Text(
                          'Login',
                          style: new TextStyle(
                              color: Colors.white, fontFamily: 'Avenir'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
