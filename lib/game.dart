// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:game/text.dart';
import 'package:lottie/lottie.dart';

class gamepage extends StatefulWidget {
  const gamepage({super.key});

  @override
  State<gamepage> createState() => _gamepageState();
}

class _gamepageState extends State<gamepage> {
  int red = 0;
  int blue = 0;
  bool bc = true;
  bool rc = true;
  bool fontb = true;
  bool fontr = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                red = red + 10;
                blue = blue - 10;

                fontr = false;
                fontb = false;
              });
              Future.delayed(Duration(milliseconds: 100)).then((val) {
                setState(() {
                  rc = false;
                  bc = false;
                });
              });
            },
            child: Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: height + red,
                  child: Visibility(
                    visible: rc,
                    child: RotatedBox(
                      quarterTurns: 90,
                      child: Lottie.asset("assets/start.json",
                          height: 20, repeat: false),
                    ),
                  ),
                  width: double.infinity,
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: fontr
                      ? RotatedBox(
                          quarterTurns: 90,
                          child: Text(
                            "Start",
                            style: text.start(),
                          ),
                        )
                      : blue > 0
                          ? RotatedBox(
                              quarterTurns: 90,
                              child: Text(
                                'Going to loose',
                                style: text.game(blue),
                              ),
                            )
                          : RotatedBox(
                              quarterTurns: 90,
                              child: Text(
                                'Going to win',
                                style: text.loos(blue),
                              ),
                            ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                blue = blue + 10;
                red = red - 10;
                fontb = false;
                fontr = false;
              });

              Future.delayed(Duration(milliseconds: 100)).then((val) {
                setState(() {
                  bc = false;
                  rc = false;
                });
              });
            },
            child: Stack(
              children: [
                Container(
                  color: Colors.blue,
                  height: height + blue,
                  child: Visibility(
                    visible: bc,
                    child: Lottie.asset("assets/started.json",
                        height: 20, repeat: false),
                  ),
                  width: double.infinity,
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: fontb
                      ? Text(
                          "Start",
                          style: text.start(),
                        )
                      : blue > 0
                          ? Text(
                              'Going to win',
                              style: text.game(blue),
                            )
                          : Text(
                              'Going to loose',
                              style: text.loos(blue),
                            ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
