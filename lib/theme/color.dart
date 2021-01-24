import 'dart:ui';
import 'package:flutter/material.dart';

const myPrimaryColor = Color.fromRGBO(75, 74, 191, 1); //#4b4abf;

MaterialColor colorPigwidgeon =
    MaterialColor(myPrimaryColor.value, LightEgyptianBlueColors);

const Map<int, Color> LightEgyptianBlueColors = {
  50: Color.fromRGBO(183, 181, 227, 1), //b7b5e3
  100: Color.fromRGBO(146, 145, 214, 1), //9291d6
  200: Color.fromRGBO(128, 126, 207, 1), //807ecf
  300: Color.fromRGBO(110, 108, 200, 1), //6e6cc8
  400: Color.fromRGBO(92, 89, 193, 1), //5c59c1
  500: myPrimaryColor,
  600: Color.fromRGBO(59, 57, 149, 1), //3b3995
  700: Color.fromRGBO(52, 50, 130, 1), //343282
  800: Color.fromRGBO(44, 43, 112, 1), //2c2b70
  900: Color.fromRGBO(30, 28, 74, 1), //1e1c4a
};

// const Map<int, Color> TealColors = {
//   50: Color.fromRGBO(100, 255, 218, .1),
//   100: Color.fromRGBO(100, 255, 218, .2),
//   200: Color.fromRGBO(100, 255, 218, .3),
//   300: Color.fromRGBO(100, 255, 218, .4),
//   400: Color.fromRGBO(100, 255, 218, .5),
//   500: Color.fromRGBO(100, 255, 218, .6),
//   600: Color.fromRGBO(100, 255, 218, .7),
//   700: Color.fromRGBO(100, 255, 218, .8),
//   800: Color.fromRGBO(100, 255, 218, .9),
//   900: Color.fromRGBO(100, 255, 218, 1), //Colors.tealAccent 0xFF64FFDA
// };

// MaterialColor colorPigwidgeon = MaterialColor(Color.fromRGBO(246, 26, 104, 1).value, PinkColors);
// const Map<int, Color> PinkColors = {
//   50: Color.fromRGBO(98, 0, 35, 1),
//   100: Color.fromRGBO(147, 0, 52, 1),
//   200: Color.fromRGBO(196, 0, 70, 1),
//   300: Color.fromRGBO(221, 0, 78, 1),
//   400: Color.fromRGBO(245, 0, 87, 1),
//   500: Color.fromRGBO(246, 26, 104, 1), //Pink Accent
//   600: Color.fromRGBO(247, 51, 121, 1),
//   700: Color.fromRGBO(248, 77, 137, 1),
//   800: Color.fromRGBO(249, 102, 154, 1),
//   900: Color.fromRGBO(251, 153, 188, 1),
// };
