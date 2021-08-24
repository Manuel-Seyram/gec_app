import 'package:flutter/material.dart';
import 'package:gec_app/Bible/bible.dart';
import 'package:gec_app/MenuItems/Join.dart';
import 'package:gec_app/MenuItems/aboutUs.dart';
import 'MenuItems/audiobook.dart';
import 'Notes/notes.dart';
import 'package:gec_app/Quiz/quiz.dart';

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
                      MaterialPageRoute(builder: (context) => AboutUs()));
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
                      MaterialPageRoute(builder: (context) => JoinGec()));
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
                      MaterialPageRoute(builder: (context) => Audiobook()));
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
