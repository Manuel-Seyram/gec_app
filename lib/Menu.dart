import 'package:flutter/material.dart';
import 'package:gec_app/MenuItems/Bible/bible1.dart';
import 'package:gec_app/MenuItems/Notes/notes.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  Function(Brightness brightness) changeTheme;
  HomeScreen({Key key, this.title, Function(Brightness brightness) changeTheme})
      : super(key: key) {
    this.changeTheme = changeTheme;
  }

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Container(),
        title: Text(
          "HOME",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue[400],
      ),
      backgroundColor: Colors.blue[50],
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(9.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UniqueBible()));
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
                      MaterialPageRoute(builder: (context) => Notes()));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Image.asset(
                    'assets/images/notification.png',
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
                      MaterialPageRoute(builder: (context) => Notes()));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Image.asset(
                    'assets/images/join us.png',
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
                    'assets/images/audiobook.jpg',
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
