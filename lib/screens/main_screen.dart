import 'package:flutter/material.dart';
import 'package:padishea/navigations/padishea_navigator.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color gradientStart = Colors.black;
  Color gradientEnd = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Hero(
            tag: 'coba',
            child: new Image(
              image: new AssetImage("assets/moa.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          new Column(
            children: <Widget>[
              new Expanded(
                flex: 5,
                child: new Container(
                  decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd.withOpacity(0.0)
                          ],
                          begin: new FractionalOffset(0.5, 1.0),
                          end: new FractionalOffset(0.5, 0.0),
                          stops: [0.0, 0.3],
                          tileMode: TileMode.clamp)),
                ),
              ),
              new Expanded(
                flex: 3,
                child: new Container(
                  decoration: new BoxDecoration(color: Colors.black),
                ),
              ),
            ],
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
                    color: Colors.grey[100],
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.circular(16.0),
                  ),
                  margin: const EdgeInsets.all(8.0),
                  child: new Column(
                    children: <Widget>[
                      new Expanded(
                        flex: 2,
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                              flex: 1,
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Container(
                                    margin: const EdgeInsets.only(
                                        top: 16.0, left: 25.0),
                                    child: new Text(
                                      "Moa Kikuchi",
                                      style: new TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  new Container(
                                    margin: const EdgeInsets.only(left: 25.0),
                                    child: new Text(
                                      "Housewife",
                                      style: new TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  new Row(
                                    children: <Widget>[
                                      new Container(
                                        margin: const EdgeInsets.only(
                                            left: 25.0, top: 16.0, right: 8.0),
                                        child: new Icon(
                                          Icons.location_city,
                                          color: Colors.teal,
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          margin:
                                              const EdgeInsets.only(top: 12.0),
                                          child: new Text(
                                            "Tōkyō-to, Toshima-ku, Sugamo,巣鴨１丁目１６−１ ２F",
                                            style: new TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  new Row(
                                    children: <Widget>[
                                      new Container(
                                        margin: const EdgeInsets.only(
                                            left: 25.0, top: 16.0, right: 8.0),
                                        child: new Icon(
                                          Icons.phone,
                                          color: Colors.teal,
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          margin:
                                              const EdgeInsets.only(top: 12.0),
                                          child: new Text(
                                            "+818-135-789",
                                            style: new TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            new CircleButton(
                              icon: Icons.edit,
                              width: 40.0,
                              height: 40.0,
                            ),
                          ],
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(16.0)),
                          padding: const EdgeInsets.all(8.0),
                          child: new Row(
                            children: <Widget>[
                              new Expanded(
                                flex: 1,
                                child: new GestureDetector(
                                  child: new Icon(
                                    Icons.dock,
                                    color: Colors.teal,
                                  ),
                                  onTap: () {
                                    PadisheaNavigator.goTohistory(context);
                                  },
                                ),
                              ),
                              new Expanded(
                                flex: 1,
                                child: new Icon(
                                  Icons.search,
                                  color: Colors.teal,
                                ),
                              ),
                              new CircleButton(
                                  icon: Icons.add, width: 50.0, height: 50.0),
                              new Expanded(
                                flex: 1,
                                child: new Icon(
                                  Icons.notifications,
                                  color: Colors.teal,
                                ),
                              ),
                              new Expanded(
                                flex: 1,
                                child: new Icon(
                                  Icons.train,
                                  color: Colors.teal,
                                ),
                              ),
                            ],
                          ),
                        ),
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

class CircleButton extends StatelessWidget {
  IconData icon;
  double width;
  double height;

  CircleButton({this.icon, this.width, this.height});
  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: Alignment.topCenter,
      child: new Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8.0),
        width: this.width,
        height: this.height,
        decoration: new ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
            ),
            shadows: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0.0, 3.0), blurRadius: 4.0)
            ],
            color: Colors.teal),
        child: new GestureDetector(
          child: new Container(
            color: Colors.teal,
            child: new Icon(
              this.icon,
              color: Colors.white,
            ),
          ),
          onTap: () {},
        ),
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
                  color: Colors.white, fontSize: 14.0, fontFamily: 'Avenir'),
            ),
          ),
        ],
      ),
    );
  }
}
