import 'package:flutter/material.dart';
import 'package:gec_app/Notes/services/sharedPref.dart';
import 'package:gec_app/Notes/screens/home.dart';
import 'package:gec_app/Notes/data/theme.dart';

class Notes extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  ThemeData theme = appThemeLight;
  @override
  void initState() {
    super.initState();
    updateThemeFromSharedPref();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: theme,
      home: MyHomePage(title: 'Home', changeTheme: setTheme),
    );
  }

  setTheme(Brightness brightness) {
    if (brightness == Brightness.light) {
      setState(() {
        theme = appThemeLight;
      });
    } else {
      setState(() {
        theme = appThemeLight;
      });
    }
  }

  void updateThemeFromSharedPref() async {
    String themeText = await getThemeFromSharedPref();
    if (themeText == 'light') {
      setTheme(Brightness.light);
    } else {
      setTheme(Brightness.dark);
    }
  }
}
