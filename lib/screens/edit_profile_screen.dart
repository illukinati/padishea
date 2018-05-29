import 'package:flutter/material.dart';
import 'package:padishea/navigations/padishea_navigator.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => new _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Edit Profile'),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: const EdgeInsets.all(16.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Container(
                  height: 100.0,
                  width: 100.0,
                  child: new Hero(
                    tag: 'avatar',
                    child: new DecoratedBox(
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: new AssetImage("assets/moa.jpg"),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                  child: new TextFormField(
                      controller:
                          new TextEditingController(text: "Moa Kikuchi"),
                      decoration: new InputDecoration(
                        labelText: "Your Name",
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      keyboardType: TextInputType.text),
                ),
                new Container(
                  margin: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 20.0),
                  child: new TextFormField(
                      controller:
                          new TextEditingController(text: "+81-336-335-334"),
                      decoration: new InputDecoration(
                        labelText: "Your Phone",
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      keyboardType: TextInputType.text),
                ),
                new Container(
                  margin: const EdgeInsets.fromLTRB(50.0, 00.0, 50.0, 20.0),
                  child: new TextFormField(
                      maxLines: 3,
                      controller: new TextEditingController(
                          text: "Tōkyō-to, Toshima-ku, Sugamo,巣鴨１丁目１６−１ ２F"),
                      decoration: new InputDecoration(
                        labelText: "Your Address",
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      keyboardType: TextInputType.text),
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
                        // TODO
                      },
                      color: Colors.teal,
                      child: new Text(
                        'Save',
                        style: new TextStyle(
                            color: Colors.white, fontFamily: 'Avenir'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
