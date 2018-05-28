import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color gradientStart = Colors.black;
  Color gradientEnd = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/moa.jpg"),
            fit: BoxFit.cover,
          ),
          new Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [gradientStart, gradientEnd.withOpacity(0.01)],
                    begin: new FractionalOffset(0.5, 1.0),
                    end: new FractionalOffset(0.5, 0.0),
                    stops: [0.0, 0.9],
                    tileMode: TileMode.clamp)),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Expanded(
                flex: 5,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new LabelNumber(
                      number: '100',
                      title: 'Your points',
                      edgeInsets: const EdgeInsets.only(left: 32.0),
                      alignment: Alignment.bottomLeft,
                    ),
                    new LabelNumber(
                      number: '25',
                      title: 'Your seeds',
                      edgeInsets: const EdgeInsets.only(right: 32.0),
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
              new Expanded(
                flex: 3,
                child: new Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(16.0)),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Container(
                                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                                child: new Text("Rika Takehara",
                                    style: new TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                    )),
                              ),new Container(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new Text("Ibu rumah tangga",
                                    style: new TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 16.0,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LabelNumber extends StatelessWidget {
  String number;
  String title;
  EdgeInsets edgeInsets;
  Alignment alignment;

  LabelNumber({this.number, this.title, this.edgeInsets, this.alignment});

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      flex: 1,
      child: new Column(
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new Container(
              margin: edgeInsets,
              alignment: alignment,
              child: new Text(
                number,
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    fontFamily: 'Avenir'),
              ),
            ),
          ),
          new Container(
            margin: edgeInsets,
            alignment: alignment,
            child: new Text(
              title,
              style: new TextStyle(
                color: Colors.white, 
                fontSize: 16.0,
                fontFamily: 'Avenir'),
            ),
          ),
        ],
      ),
    );
  }
}
