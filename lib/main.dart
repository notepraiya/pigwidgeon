import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme/color.dart';
import 'pages/welcome.dart';
import 'pages/home.dart';

import 'dart:developer';
import 'package:device_info/device_info.dart';

const app_title = "Pigwidgeon";

void main() {
  runApp(Pigwidgeon());
}

class Pigwidgeon extends StatefulWidget {
  @override
  _PigwidgeonState createState() {
    log('Pigwidgeon => createState()', name: 'main.dart');
    return _PigwidgeonState();
  }
}

class _PigwidgeonState extends State<Pigwidgeon> {
  bool _firstRun = true;

  void _getFirstRun() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _firstRun = prefs.getBool('firstRun') ?? true;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    log('androidInfo.model => ${androidInfo.model}', name: 'main.dart');

    // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    // log('iosInfo.utsname.machine => ${iosInfo.utsname.machine}',
    //     name: 'main.dart');
  }

  @override
  Widget build(BuildContext context) {
    _getFirstRun();

    log('build', name: 'main.dart');
    log('_firstRun => $_firstRun', name: 'main.dart');

    return MaterialApp(
      // showPerformanceOverlay: true,
      title: app_title,
      theme: ThemeData(
        primarySwatch: colorPigwidgeon,
        // fontFamily: 'BalsamiqSans',
        fontFamily: 'Rubik',
        // https://api.flutter.dev/flutter/material/TextTheme-class.html
        textTheme: TextTheme(
          headline4: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          headline5: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87),
          bodyText2: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Colors.black87),
        ),
      ),
      home: Welcome(),
      // home: Home(title: app_title),
      // home: _firstRun ? Welcome() : Home(title: app_title),
    );
  }
}
