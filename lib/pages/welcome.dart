import 'package:flutter/material.dart';

import 'package:pigwidgeon/my.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    My.print('Welcome');

    return Container(
      child: Text('Welcome'),
    );
  }
}
