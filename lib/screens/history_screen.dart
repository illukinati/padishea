import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => new _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<String> _image = new List<String>();
  List<String> _point = new List<String>();
  List<String> _desc = new List<String>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _desc.add("Indomie 5 pcs");
      _desc.add("Rice 2 Kg");
      _desc.add("Rice 1 Kg");

      _image.add("assets/indomie.jpg");
      _image.add("assets/padi.jpeg");
      _image.add("assets/padi.jpeg");

      _point.add("-50");
      _point.add("+100");
      _point.add("+50");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('History'),
      ),
      body: new ListView.builder(
        itemCount: _desc.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Container(
              padding: const EdgeInsets.all(32.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      leading: new Container(
                        child: new Image(
                          image: new AssetImage("${_image[index]}"),
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                      title: new Container(
                        margin: const EdgeInsets.only(left: 32.0),
                        child: new Text(
                          "${_point[index]}",
                          style: new TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.orange),
                        ),
                      ),
                      subtitle: new Container(
                        margin: const EdgeInsets.only(left: 32.0),
                        child: new Text('${_desc[index]}')),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
