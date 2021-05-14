import 'package:desafio_flutter_in_the_dark_2/screens/skills_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/character.dart';

class UnlockedCharacterWidget extends StatelessWidget {
  String characterName;
  String imagePath;

  UnlockedCharacterWidget(
      {required this.characterName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => 
                                  SkillsPage(imagePath: imagePath, characterName: characterName,))),
          child: Card(
          elevation: 20,
          child: Container(
            width: 350,
            height: 300,
            decoration: BoxDecoration(
              
              color: Color(0xff212121),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                      
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    this.characterName,
                    style: GoogleFonts.kronaOne(
                      color: Color(0xffC53232),
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    width: 210,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xffC53232)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Lethargy Activated',
                              style: GoogleFonts.jura(
                                  fontSize: 16, color: Colors.white)),
                          Icon(Icons.circle, color: Color(0xffc53232),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
