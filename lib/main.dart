import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // for SystemChrome
import 'package:shared_preferences/shared_preferences.dart';

import 'theme/color.dart';

import 'pages/splash.dart';

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
  bool _isFirstRun = true;

  void _getFirstRun() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isFirstRun = prefs.getBool('isFirstRun') ?? true;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    log('_getFirstRun() / androidInfo.model => ${androidInfo.model}',
        name: 'main.dart');

    // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    // log('iosInfo.utsname.machine => ${iosInfo.utsname.machine}',
    //     name: 'main.dart');
  }

  @override
  Widget build(BuildContext context) {
    // This would set android status bar's app to be transparent and small bar icon to dark color
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    // );

    _getFirstRun();

    log('build / _isFirstRun => $_isFirstRun', name: 'main.dart');

    return MaterialApp(
      // showPerformanceOverlay: true,
      title: app_title,
      theme: ThemeData(
        primarySwatch: colorPigwidgeon,
        // fontFamily: 'BalsamiqSans',
        fontFamily: 'Rubik',
        // https://api.flutter.dev/flutter/material/TextTheme-class.html
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 42.0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
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
            color: Colors.black87,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            // backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(
                fontFamily: 'Rubik',
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              // Size(MediaQuery.of(context).size.width * 0.8, 58.0),
              Size(284, 58.0),
            ),
          ),
        ),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      home: Splash(),
      // home: OnBoarding(),
      // home: Home(title: app_title),
      // home: _isFirstRun ? OnBoarding() : Home(title: app_title),
    );
  }
}
