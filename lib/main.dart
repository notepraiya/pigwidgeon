import 'package:flutter/material.dart';

import 'theme/color.dart';
import 'pages/home.dart';
import 'pages/food.dart';

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
          MaterialPage(
            child: Food(),
          ),
        ],
        onPopPage: (route, result) {
          print('onPopPage');
          // return route.didPop(result);
          if (!route.didPop(result)) {
            return false;
          }

          // setState(() {
          //   _selectedFood = null;
          // });

          return true;
        },
      ),
    );
  }
}
