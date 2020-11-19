import 'package:flutter/material.dart';

class AudioBooks extends StatefulWidget {
  @override
  _AudioBooksState createState() => new _AudioBooksState();
}

class _AudioBooksState extends State<AudioBooks> {
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
