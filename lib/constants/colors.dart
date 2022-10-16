import 'package:flutter/material.dart';

const Color primaryT = Color(0xFF03045e);

class Palette {
  static  MaterialColor primaryM = const MaterialColor(
    0xFF03045e, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff030455),//10%
      100: Color(0xff02034b),//20%
      200: Color(0xff020342),//30%
      300: Color(0xff020238),//40%
      400: Color(0xff02022f),//50%
      500: Color(0xff010226),//60%
      600: Color(0xff01011c),//70%
      700: Color(0xff010113),//80%
      800: Color(0xff000009),//90%
      900: Color(0xff000000),//100%
    },
  );
} // you can d