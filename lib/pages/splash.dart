import 'package:flutter/material.dart';
import 'dart:developer';

const myTextStyle = TextStyle(
  fontSize: 58.0,
  color: Colors.white,
);

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('build', name: 'splash.dart');
    return Scaffold(
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: 1.0,
            duration: Duration(
              milliseconds: 5000,
            ),
            onEnd: () {
              print('end');
            },
            child: Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          LinearProgressIndicator(
            minHeight: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food',
                  style: myTextStyle,
                ),
                Text(
                  'Delivery',
                  style: myTextStyle,
                ),
                Text(
                  'App',
                  style: myTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
