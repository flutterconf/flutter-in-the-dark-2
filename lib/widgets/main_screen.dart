import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: bgColor,
          title: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  ' MACHINE UNLOCKED',
                  style: TextStyle(
                    color: secondaryColor,
                  ),
                ),
                IconButton(
                  icon: Image.asset(
                    "assets/images/unlocked.png",
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: new FloatingActionButton(
          backgroundColor: secondaryColor,
          child: IconButton(
            icon: Image.asset(
              "assets/images/logo.png",
            ),
            onPressed: null,
          ),
          onPressed: () {},
        ),
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                90.0,
                140,
                90,
                20,
              ),
              child: Card(
                child: Container(
                  width: 390,
                  height: 355,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/atria.png",
                      ),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250.0, left: 20),
                    child: Text(
                      "ATRIA",
                      style: TextStyle(color: secondaryColor, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                90.0,
                140,
                90,
                20,
              ),
              child: Card(
                child: Container(
                  width: 390,
                  height: 355,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/leick.png",
                      ),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250.0, left: 20),
                    child: Text(
                      "LEICK",
                      style: TextStyle(color: secondaryColor, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                90.0,
                140,
                90,
                20,
              ),
              child: Card(
                child: Container(
                  width: 390,
                  height: 355,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/lilith.png",
                      ),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250.0, left: 20),
                    child: Text(
                      "LILITH",
                      style: TextStyle(color: secondaryColor, fontSize: 24),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
