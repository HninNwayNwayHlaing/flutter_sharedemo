import 'package:flutter/material.dart';
import 'package:share/share.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Share Plugin Demo',
      home: new Scaffold(
          appBar: new AppBar(
            title: const Text('Share Plugin Demo'),
          ),
          body: new Padding(
            padding: const EdgeInsets.all(24.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  decoration: const InputDecoration(
                    labelText: 'Share:',
                    hintText: 'Enter some text and/or link to share',
                  ),
                  maxLines: 4,
                  onChanged: (String value) => setState(() {
                    text = value;
                  }),
                ),
                new RaisedButton(
                  child: const Text('Share'),
                  onPressed: text.isNotEmpty
                      ? () {
                    share(text);
                  }
                      : null,
                ),
              ],
            ),
          )),
    );
  }
}