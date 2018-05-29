import 'package:flutter/material.dart';
import 'package:padishea/navigations/padishea_navigator.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull(
            "http://puskesmasdampit.com/service_login.php?email=superkader@mail.com&pass=superkader"),
        headers: {"Accept": "application/json"});

    print(response.body);

    PadisheaNavigator.gotoMain(context);

    // List data = JSON.decode(response.body);
    // print(data[0]["login"]);
  }

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
                    margin: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 10.0),
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
                  new Hero(
                    tag: 'btn-login',
                    child: new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: new Material(
                        borderRadius: BorderRadius.circular(30.0),
                        shadowColor: Colors.greenAccent.shade100,
                        elevation: 5.0,
                        child: new MaterialButton(
                          minWidth: 200.0,
                          height: 42.0,
                          onPressed: () {
                            getData();
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
                  ),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          flex: 1,
                          child: new Container(),
                        ),
                        new Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: new Image(
                            image: AssetImage("assets/icon_fb.png"),
                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                        new Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: new Image(
                              image: AssetImage("assets/icon_twitter.png"),
                              width: 30.0,
                              height: 30.0,
                            )),
                        new Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: new Image(
                            image: AssetImage("assets/icon_google.png"),
                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                        new Expanded(
                          flex: 1,
                          child: new Container(),
                        ),
                      ],
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
