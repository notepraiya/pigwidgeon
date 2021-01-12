import 'package:flutter/material.dart';

class CardFood extends StatefulWidget {
  @override
  _CardFoodState createState() => _CardFoodState();
}

class _CardFoodState extends State<CardFood> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          print('onTap');
        },
        splashColor: Theme.of(context).accentColor,
        child: Container(
          height: 250.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://storage.googleapis.com/firestorequickstarts.appspot.com/food_22.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: null,
        ),
      ),
    );
  }
}
