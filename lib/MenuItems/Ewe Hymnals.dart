import 'package:flutter/material.dart';

class EweHymns extends StatefulWidget {
  @override
  _EweHymnsState createState() => new _EweHymnsState();
}

class _EweHymnsState extends State<EweHymns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Bible"),
        backgroundColor: Colors.blue[300],
      ),
    );
  }
}
