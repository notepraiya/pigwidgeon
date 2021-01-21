import 'package:flutter/material.dart';
import 'dart:developer';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log('build', name: 'welcome.dart');
    return Scaffold(
      backgroundColor: Color.fromRGBO(74, 71, 186, 1), //#4A47BA
      body: Column(
        children: [
          Container(
            child: Center(
              child: Image.asset('assets/images/welcome.jpg'),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(54.0),
                  topRight: Radius.circular(54.0),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'Welcome',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'to food delivery app',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
