import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gec_app/Menu.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
}

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => new _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
            title: const Text('Visit Us'),
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
            initialUrl: "https://www.gecgh.org/",
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
