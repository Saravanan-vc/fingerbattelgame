// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:game/game.dart';
import 'package:game/text.dart';
import 'package:lottie/lottie.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  bool slected = true;
  bool val = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height,
                color: Colors.red,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Finger Battel',
                      style: text.Enterytitle(),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'prove that you have no Mercy',
                      style: text.Enterysubtitle(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: height,
                color: Colors.blue,
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: LottieBuilder.asset(
              "assets/entery.json",
              width: 110,
            ),
          ),
          Visibility(
            visible: val,
            child: Positioned(
              bottom: 100,
              left: 110,
              child: LottieBuilder.asset(
                "assets/mainloading.json",
                width: 190,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 150,
            child: Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      slected = false;
                      val = true;
                    });
                    Future.delayed(Duration(seconds: 9)).then((onValue) {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => gamepage(),
                          ),
                        );
                      });
                    });
                  },
                  child: AnimatedContainer(
                    curve: Curves.fastOutSlowIn,
                    height: slected ? null : 1,
                    width: slected ? null : 1,
                    padding: slected ? EdgeInsets.all(4) : null,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(1, 1.9),
                          spreadRadius: slected ? 2 : 0,
                          blurRadius: slected ? 6 : 0,
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    duration: Duration(seconds: 2),
                    child: slected
                        ? Text(
                            "Start Battel",
                            style: text.startgame(),
                          )
                        : Text(
                            '',
                          ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
