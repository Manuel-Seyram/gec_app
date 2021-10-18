//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gec_app/Splash/splash.dart';
//import 'package:gec_app/menu/menu.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/splash': (BuildContext context) => new SplashScreen()
    },
  ));
}
