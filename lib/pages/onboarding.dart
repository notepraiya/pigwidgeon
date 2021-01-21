import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:developer';

import 'welcome.dart';

class OnBoarding extends StatelessWidget {
  void _endOnBoarding(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstRun', false);

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Welcome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    log('build', name: 'onboarding.dart');

    List<PageViewModel> pageList = [
      PageViewModel(
        titleWidget: Padding(
          padding: EdgeInsets.fromLTRB(0, 40.0, 0, 0),
          child: Text(
            'Step 1',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/onboarding1.png'),
            Text(
              'Find your favorite',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'food',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Find food from any cafe or',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'restaurant in your city',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        decoration: const PageDecoration(
          pageColor: Color.fromRGBO(255, 229, 142, 1),
        ),
      ),
      PageViewModel(
        titleWidget: Padding(
          padding: EdgeInsets.fromLTRB(0, 40.0, 0, 0),
          child: Text(
            'Step 2',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/onboarding2.png'),
            Text(
              'Make your choice',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'and order',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Order your favorite food',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        decoration: const PageDecoration(
          pageColor: Color.fromRGBO(194, 191, 244, 1),
        ),
      ),
      PageViewModel(
        titleWidget: Padding(
          padding: EdgeInsets.fromLTRB(0, 40.0, 0, 0),
          child: Text(
            'Step 3',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/onboarding3.png'),
            Text(
              'Receive your food',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 28.0,
            ),
            Text(
              'Enjoy your favorite dishes without',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'leaving your home',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        decoration: const PageDecoration(
          pageColor: Color.fromRGBO(183, 215, 202, 1),
        ),
      ),
    ];

    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Color.fromRGBO(211, 228, 215, 1),
        pages: pageList,
        // showNextButton: true,
        // showSkipButton: true,
        // skip: Text("Skip"),
        // next: Text('Next'),
        done: Text('Start!'),
        onDone: () {
          log('onDone/endOnBoarding()', name: 'onboarding.dart');
          _endOnBoarding(context);
        },
        dotsDecorator: DotsDecorator(
          size: Size(8.0, 8.0),
          color: Colors.grey,
          spacing: const EdgeInsets.symmetric(horizontal: 5.0),
          activeSize: Size(22.0, 8.0),
          activeColor: Colors.black87,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
