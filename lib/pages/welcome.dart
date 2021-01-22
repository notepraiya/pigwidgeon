import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:pigwidgeon/theme/button.dart';

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
                      height: 48.0,
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
                    const SizedBox(
                      height: 36.0,
                    ),
                    ElevatedButton(
                      // child: Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 16.0,
                      //     horizontal: 86.0,
                      //   ),
                      //   child: Text(
                      //     'Sign Up',
                      //     style: Theme.of(context).textTheme.bodyText2,
                      //   ),
                      // ),
                      child: Text('Sign Up'),
                      onPressed: () {
                        print('pressed');
                      },
                      // style: ElevatedButton.styleFrom(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(18.0),
                      //   ),
                      // ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Already registered?'),
                        FlatButton(
                          onPressed: () {
                            print('press');
                          },
                          child: Text(
                            'Sign in',
                            // style: Theme.of(context).textTheme.bodyText2,
                            style: myFlatButtonTextStyle(),
                          ),
                        ),
                      ],
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
