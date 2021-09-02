//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gec_app/Menu.dart';
//import 'package:gec_app/menu/menu.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomeScreen(),
    routes: <String, WidgetBuilder>{
      '/menu': (BuildContext context) => new HomeScreen()
    },
  ));
}
