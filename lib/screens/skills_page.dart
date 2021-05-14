import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class SkillsPage extends StatelessWidget {
  String imagePath;
  String characterName;

  SkillsPage({required this.imagePath, required this.characterName});

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
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 22,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            "Zhin Quad",
                            style: GoogleFonts.jura(
                                fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(imagePath),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          characterName,
                          style: GoogleFonts.kronaOne(
                              color: Color(0xffc53232),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xffC53232)),
                      ),
                      child: Center(
                        child: Text('Lethargy Off',
                            style: GoogleFonts.jura(
                                fontSize: 16, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Expanded(
                  child: ResponsiveGridList(
                    rowMainAxisAlignment: MainAxisAlignment.center,
                    minSpacing: 30,
                    desiredItemWidth: 350,
                    children: [
                      Container(
                        width: 350,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("./images/grafico.png")),
                        ),
                      ),
                      Container(
                        width: 350,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("./images/porcentaje.png")),
                        ),
                      ),
                      Container(
                        width: 350,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("./images/barras.png")),
                        ),
                      ),
                    ],
                  ),
                )
              ],
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
                child: Icon(
                  Icons.control_camera_sharp,
                  size: 30,
                ),
              ),
            )),
      ],
    );
  }
}
