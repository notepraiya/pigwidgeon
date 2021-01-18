import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme/color.dart';
import 'pages/welcome.dart';
import 'pages/home.dart';

import 'package:pigwidgeon/my.dart';

const app_title = "Pigwidgeon";

void main() {
  runApp(Pigwidgeon());
}

class Pigwidgeon extends StatefulWidget {
  @override
  _PigwidgeonState createState() {
    My.print('main.dart => Pigwidgeon => createState()');
    return _PigwidgeonState();
  }
}

class _PigwidgeonState extends State<Pigwidgeon> {
  bool _firstRun = true;

  void _getFirstRun() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _firstRun = prefs.getBool('firstRun') ?? true;
    await prefs.setBool('firstRun', false);
  }

  @override
  Widget build(BuildContext context) {
    _getFirstRun();
    My.print('main.dart => _firstRun => $_firstRun');

    return MaterialApp(
      title: app_title,
      theme: ThemeData(
        primarySwatch: colorPigwidgeon,
        fontFamily: 'BalsamiqSans',
      ),
      // home: Home(title: app_title),
      home: _firstRun
          ? Welcome()
          : Home(title: app_title),
    );
  }
}
