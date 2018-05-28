import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => new _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<bool> _data = new List<bool>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      for (int i = 0; i < 10; i++) {
        _data.add(false);
      }
    });
  }

  void _onChange(bool value, int index) {
    setState(() {
      _data[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('History'),
      ),
      body: new ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Container(
              padding: const EdgeInsets.all(32.0),
              child: new Column(
                children: <Widget>[
                  new Text('This is item'),
                  new CheckboxListTile(
                    value: _data[index],
                    controlAffinity: ListTileControlAffinity.leading,
                    title: new Text('Click me item ${index}'),
                    onChanged: (bool value) {
                      _onChange(value, index);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
