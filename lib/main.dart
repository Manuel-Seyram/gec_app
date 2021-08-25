//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gec_app/Menu.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomeScreen(),
    routes: <String, WidgetBuilder>{
      '/Menu': (BuildContext context) => new HomeScreen()
    },
  ));
}
