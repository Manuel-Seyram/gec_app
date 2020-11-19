import 'package:flutter/material.dart';

class Bible extends StatefulWidget {
  @override
  _BibleState createState() => new _BibleState();
}

class _BibleState extends State<Bible> {
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
