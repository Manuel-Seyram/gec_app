import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gec_app/Menu.dart';
import 'package:gec_app/Quiz/quizpage.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  List<String> images = [
    "assets/images/prophet.jpg",
    "assets/images/beginning.jpg",
    "assets/images/history.jpg",
    "assets/images/poetry.jpg",
    "assets/images/new testament1.jpg",
  ];

  List<String> des = [
    "The prophetic books are a division of the Christian Bible, grouping 18 books in the Old Testament.\nThe first six of the books are known as the major prophets, while the last 12 are known as the minor prophets. \nThese names do not imply that the major prophets are more important than the minor prophets, but refer to the major prophetic books being much longer than the minor ones  \n If You think you have learnt it.. \nJust test yourself !!",
    "The books of the beginning tells the story from the Creation of the world to the death of Moses and the preparation of the Israelite's to enter the land of Canaan.\nJust Test Yourself !!",
    "The historical books are a division of Christian Bibles, grouping 12 books of the Old Testament.\n The books provide a history of the Israelites spanning nearly a millennium, from their conquest of Canaan until the return to Zion in 539 BCE.",
    "The Poetic Books are a division of the Christian Bible, grouping 5 or 7 books in the Old Testament.\nThese five poetical books are concerned with individuals, as such...",
    "The New Testament discusses the teachings and person of Jesus, as well as events in first-century Christianity.\nThe New Testament consists of 27 books",
  ];

  Widget customcard(String biblecategory, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => getjson(biblecategory),
          ));
        },
        child: Material(
          color: Colors.blue[400],
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    biblecategory,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " GEC Bible Quiz",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }),
      ),
      body: ListView(
        children: <Widget>[
          customcard("The Books of the Beginning", images[1], des[1]),
          customcard("The Books of History", images[2], des[2]),
          customcard("The Books of Poetry or Wisdom", images[3], des[3]),
          customcard(" The Books of the Prophets", images[0], des[0]),
          customcard("New Testament", images[4], des[4]),
        ],
      ),
    );
  }
}
