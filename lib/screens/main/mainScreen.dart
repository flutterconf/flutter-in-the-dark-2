import 'package:desafio_flutter_in_the_dark_2/constants.dart';
import 'package:desafio_flutter_in_the_dark_2/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import '../../responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 140,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  height: 80,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          'MACHINE UNLOCKED',
                          style: GoogleFonts.jura(
                            color: kSecondaryColor,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.lock_open,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Image.asset(
                    'assets/Logo.png',
                    height: 60,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: imageHero('atria'),
                ),
                Expanded(
                  flex: 3,
                  child: imageHero('leick'),
                ),
                Expanded(
                  flex: 3,
                  child: imageHero('lilith'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column imageHero(String image) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 8),
          color: kSecondaryColor,
          child: Image.asset(
            'assets/$image.png',
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          color: Colors.black,
          height: 200,
          width: double.infinity,
          child: Text(
            image,
            style: GoogleFonts.kronaOne(
              color: kSecondaryColor,
              fontSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}
