import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Text(
          'Food',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
