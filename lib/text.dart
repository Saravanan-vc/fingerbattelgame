// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class text {
  static TextStyle game(int h) {
    int j = 10;
    return TextStyle(
      fontFamily: "pixel",
      fontSize: h.toDouble() * 0.1,
    );
  }

  static TextStyle loos(int h) {
    int j = 10;
    return TextStyle(
      fontFamily: "pixel",
      fontSize: -(h.toDouble() * 0.1),
    );
  }

  static TextStyle start() {
    return TextStyle(
      fontFamily: "pixel",
      fontSize: 14,
    );
  }

  static TextStyle Enterytitle() {
    return TextStyle(
      fontSize: 32,
      fontFamily: "play",
      fontWeight: FontWeight.w800,
      color: Colors.white,
    );
  }

  static TextStyle Enterysubtitle() {
    return TextStyle(
        fontSize: 18,
        fontFamily: "play",
        fontWeight: FontWeight.w600,
        color: const Color.fromARGB(255, 219, 219, 219),
        wordSpacing: 2.8);
  }

  static TextStyle startgame() {
    return TextStyle(
        fontFamily: "play",
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.white);
  }
  static TextStyle gamestarted(int h) {
    int j = 10;
    return TextStyle(
      fontFamily: "pixel",
      fontSize: h.toDouble() * 0.1,
    );
  }
}
