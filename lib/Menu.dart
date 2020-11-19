import 'package:flutter/material.dart';
import 'package:gec_app/MenuItems/Audio%20Books.dart';
import 'package:gec_app/MenuItems/Bible.dart';
import 'package:gec_app/MenuItems/Ewe%20Hymnals.dart';
import 'package:gec_app/MenuItems/Notes.dart';
import 'package:gec_app/MenuItems/Quiz.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("HOME"),
        backgroundColor: Colors.blue[400],
      ),
      backgroundColor: Colors.blue[50],
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(9.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bible()));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Image.asset(
                    'assets/images/bible.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(9.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notes()));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Image.asset(
                    'assets/images/notes.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(9.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AudioBooks()));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Image.asset(
                    'assets/images/audiobook.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(9.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Quiz()));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Image.asset(
                    'assets/images/quiz.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(9.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EweHymns()));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Image.asset(
                    'assets/images/hymn.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
