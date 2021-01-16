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
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://res.cloudinary.com/notepraiya/image/upload/v1610611139/foods/brooke-lark-1Rm9GLHV0UA-unsplash_fmd38n.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: null,
        ),
      ),
    );
  }
}

