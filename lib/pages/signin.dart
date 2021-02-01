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
      body: Stack(
        children: [
          Container(
            height: 350.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signin.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
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
                        child: Text('Sign In'),
                        onPressed: () {
                          _signIn();
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: Container(
                          width: 302.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Don't have an account?"),
                              FlatButton(
                                onPressed: () {
                                  _signUp();
                                },
                                child: Text(
                                  'Sign up',
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
