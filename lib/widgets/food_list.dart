import 'package:flutter/material.dart';

import 'card_food.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
    children: [
      CardFood(),
      CardFood(),
      CardFood(),
    ],
  );
  }
}