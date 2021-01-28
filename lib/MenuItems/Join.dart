import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gec_app/Menu.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
}

class JoinGec extends StatefulWidget {
  @override
  _JoinGecState createState() => new _JoinGecState();
}

class _JoinGecState extends State<JoinGec> {
  InAppWebViewController webView;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('JOIN Gec Today'),
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                })),
        body: Container(
            child: Column(children: <Widget>[
          Expanded(
              child: InAppWebView(
            initialUrl:
                "https://docs.google.com/forms/d/e/1FAIpQLSdvkJDw1PX5_di1B1hebt6GYkxtAN9G7BnqwpY-ftaV9W2UtQ/viewform",
            initialHeaders: {},
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                  debuggingEnabled: true,
                  preferredContentMode: UserPreferredContentMode.DESKTOP),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onLoadStart: (InAppWebViewController controller, String url) {},
            onLoadStop:
                (InAppWebViewController controller, String url) async {},
          ))
        ])),
      ),
    );
  }
}
