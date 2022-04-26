// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class ThemeController {
  // ignore: prefer_typing_uninitialized_variables
  var dateNow;

  ThemeController() {
    dateNow = DateTime.now().hour;
    dateNow = 1;
  }

  Alignment backgroundShift() {
    Random random = Random();
    int randomNumber = random.nextInt(2);

    if ((dateNow > 18 || dateNow < 4) || (dateNow > 6 && dateNow < 15)) {
      switch (randomNumber) {
        case 0:
          return Alignment.centerRight;
        case 1:
          return Alignment.center;
        default:
          return Alignment.centerLeft;
      }
    } else {
      return Alignment.centerLeft;
    }
  }

  AssetImage backgroundSelector() {
    if (dateNow > 18 || dateNow < 4) {
      return AssetImage("assets/background/nightsky.jpeg");
    } else if (dateNow > 15) {
      return AssetImage("assets/background/afternoonsky.jpg");
    } else if (dateNow > 6) {
      return AssetImage("assets/background/morningsky.jpg");
    } else if (dateNow > 4) {
      return AssetImage("assets/background/afternoonsky.jpg");
    } else {
      return AssetImage("assets/background/morningsky.jpg");
    }
  }

  ThemeData themeSelector(context) {
    // var dateNow = DateTime.now().hour;

    if (dateNow > 18 || dateNow < 4) {
      return _nightTheme();
    } else if (dateNow > 15) {
      return _afternoonTheme();
    } else if (dateNow > 6) {
      return _morningTheme();
    } else if (dateNow > 4) {
      return _afternoonTheme();
    }
    return ThemeData();
  }

  ThemeData _morningTheme() {
    return ThemeData(
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 0,
        color: Color.fromARGB(157, 165, 198, 223),
        // color: Colors.white60,
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          color: Color.fromARGB(255, 34, 34, 34),
        ),
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          letterSpacing: 0,
        ),
        headline5: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        headline6: TextStyle(
          color: Colors.black,
          letterSpacing: 0.2,
        ),
        headline3: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        caption: TextStyle(
          fontSize: 13,
          color: Color.fromARGB(255, 92, 92, 92),
        ),
      ),
      primaryColor: Colors.black,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Color(0xff7CB1FF), // Your accent color
      ),
    );
  }

  ThemeData _afternoonTheme() {
    return ThemeData(
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 0,
        color: Color.fromRGBO(255, 223, 148, .5),
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          color: Color.fromARGB(255, 41, 41, 41),
          // color: Colors.black,
        ),
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          letterSpacing: 0.5,
        ),
        headline3: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontWeight: FontWeight.bold,
        ),
        headline5: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        headline6: TextStyle(
          color: Colors.black,
          letterSpacing: 0.2,
        ),
        caption: TextStyle(
            // color: Color(0xff505050),

            ),
      ),
      primaryColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Color(0xff2E81FD), // Your accent color
      ),
    );
  }

// 737373
  ThemeData _nightTheme() {
    return ThemeData(
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 0,
        // color: Color.fromRGBO(33, 44, 55, .7),
        color: Colors.black54,
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          color: Color(0xffCECECE),
        ),
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          letterSpacing: 1,
        ),
        headline5: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        headline6: TextStyle(
          color: Colors.white,
          letterSpacing: 0.2,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        caption: TextStyle(
          color: Color(0xffCECECE),
        ),
      ),
      primaryColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Color(0xff3A89FF), // Your accent color
      ),
    );
  }
}