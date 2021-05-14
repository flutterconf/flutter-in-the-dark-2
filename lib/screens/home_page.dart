import 'package:desafio_flutter_in_the_dark_2/widgets/locked_character_widget.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/unlocked_character_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Map<String, Widget> characterWidgets;

  _HomePageState() {
    characterWidgets = {
      "atria": LockedCharacterWidget(
        characterName: "ATRIA",
        imagePath: "./images/atria.png",
        onTap: () => unlockCharacter("atria"),
      ),
      "leick": LockedCharacterWidget(
        characterName: "LEICK",
        imagePath: "./images/leick.png",
        onTap: () => unlockCharacter("leick"),
      ),
      "lilith": LockedCharacterWidget(
        characterName: "LILITH",
        imagePath: "./images/lilith.png",
        onTap: () => unlockCharacter("lilith"),
      ),
    };
  }

  void unlockCharacter(String character) {
    setState(() {
      characterWidgets[character] = UnlockedCharacterWidget(
          characterName: character.toUpperCase(),
          imagePath: "./images/$character.png",
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xff212121),
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: Row(
                  children: [
                    Text(
                      'MACHINE UNLOCKED',
                      style: GoogleFonts.jura(
                          fontSize: 23, color: Color(0xffC53232)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.lock_open, color: Colors.white, size: 30),
                  ],
                ),
              )
            ],
          ),
          
          body: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: _responsivePadding(context), vertical: 80),
            child: ResponsiveGridList(
                desiredItemWidth: 350,
                children: characterWidgets.values.toList(),
                minSpacing: _responsiveSpacing(context),
              ),
            ),
          ),
        
        Padding(
            padding: EdgeInsets.only(top: 30, left: 80),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffC53232)),
              child: Center(
                child:
                  Icon(Icons.control_camera_sharp, size: 30,),
              ),
            )),

      Padding(
        padding: EdgeInsets.only(top: 90, left: 130),
        child: Row(children: [
        
              Material(
                color: Colors.transparent,
                              child: Text("Zhin Quad",
                  style: GoogleFonts.jura(
                    fontSize: 22,
                    color: Colors.white
                  ),
                ),
              ),
              Icon(Icons.arrow_downward, color: Colors.white, size: 22,)
            ],),
      )

      ],
    );
  }
}

double _responsivePadding(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width < 550) return 0;

  if (width < 800) return width / 15;

  if (MediaQuery.of(context).size.width < 1000)
    return width / 10;
  else
    return 70;
}

double _responsiveSpacing(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width < 550) return 0;

  if (width < 800) return 20;

  if (MediaQuery.of(context).size.width < 1000)
    return 40;
  else
    return 50;
}
