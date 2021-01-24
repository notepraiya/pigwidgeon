import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:pigwidgeon/pages/onboarding.dart';

class Splash extends StatelessWidget {
  final _myTextStyle = TextStyle(
    fontSize: 58.0,
    color: Colors.white,
  );

  Future<void> _initMyApp(context) {
    return Future.delayed(
      Duration(
        seconds: 3,
      ),
      // () => throw Exception('init failed'));
      () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => OnBoarding()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    log('build', name: 'splash.dart');
    _initMyApp(context);
    return Scaffold(
      body: Stack(
        children: [
          // AnimatedOpacity(
          //   opacity: 1.0,
          //   duration: Duration(
          //     milliseconds: 5000,
          //   ),
          //   onEnd: () {
          //     print('end');
          //   },
          //   child: Image.asset(
          //     'assets/images/splash.png',
          //     fit: BoxFit.cover,
          //     height: double.infinity,
          //     width: double.infinity,
          //     alignment: Alignment.center,
          //   ),
          // ),
          Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food',
                  style: _myTextStyle,
                ),
                Text(
                  'Delivery',
                  style: _myTextStyle,
                ),
                Text(
                  'App',
                  style: _myTextStyle,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: LinearProgressIndicator(
              minHeight: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
