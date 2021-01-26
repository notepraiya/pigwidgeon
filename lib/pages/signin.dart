import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:pigwidgeon/theme/button.dart';
import 'package:pigwidgeon/theme/color.dart';

class SignIn extends StatelessWidget {
  void _signUp() {
    print('sign up');
  }

  void _signIn() {
    print('sign in');
  }

  @override
  Widget build(BuildContext context) {
    log('build', name: 'signin.dart');
    return Scaffold(
      backgroundColor: myPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              FittedBox(
                child: Image.asset('assets/images/signin.png'),
                fit: BoxFit.fill,
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(54.0),
                      topRight: Radius.circular(54.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
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
                  child: Text('Sign Up'),
                  onPressed: () {
                    _signUp();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    width: 268.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Already registered?'),
                        FlatButton(
                          onPressed: () {
                            _signIn();
                          },
                          child: Text(
                            'Sign in',
                            // style: Theme.of(context).textTheme.bodyText2,
                            style: myFlatButtonTextStyle(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
