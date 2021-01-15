import 'package:flutter/material.dart';

import 'theme/color.dart';
import 'pages/home.dart';

const app_title = "Flutterer";

void main() {
  runApp(Flutterer());
}

class Flutterer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_title,
      theme: ThemeData(
        primarySwatch: colorFlutterer,
        fontFamily: 'BalsamiqSans',
      ),
      // home: Home(title: app_title),
      home: Navigator(
        pages: [
          MaterialPage(
            child: Home(title: app_title),
          ),
        ],
        onPopPage: (route, result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
