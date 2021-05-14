import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LockedCharacterWidget extends StatelessWidget {
  String characterName;
  String imagePath;
  Function onTap;

  LockedCharacterWidget(
      {required this.characterName,
      required this.imagePath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDialog(context),
      child: Card(
          elevation: 15,
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
                Stack(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          image: DecorationImage(
                              image: AssetImage(imagePath),
                              fit: BoxFit.fitWidth)),
                    ),
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color(0xFFCC4A4A).withAlpha(50),
                            Color(0xFFCC4A4A).withAlpha(200),
                          ])),
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xFFDA5252), width: 4),
                          ),
                          child: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFDA5252),
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
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
                ),
              ],
            ),
          )),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xff212121),

        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.close,
                  color: Color(0xffC53232), 
                  size: 35,
                ),
                onPressed: () => Navigator.of(context).pop(),
                 ),
            ),
            SizedBox(height: 10,),
            Text(
                'WARNING',

                style: GoogleFonts.kronaOne(
                  fontSize: 22,
                  color: Color(0xffC53232),
                )
              ),
            
            SizedBox(height: 10),
            Text(
              'This action will unlock lethargy mode',
              style: GoogleFonts.jura(
                fontSize: 15,
                color: Colors.white
                
              )
            ),
            SizedBox(height: 30),
            Text(
              'Are you $characterName?',
              style: GoogleFonts.jura(
                fontSize: 15,
                color: Color(0xffC53232),
              )
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
                          child: TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hoverColor: Colors.white,
                  fillColor: Colors.white,
                  

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(4)
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(4)
                  ),
                ),

              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
                          child: ElevatedButton(
                            
                
                  onPressed: () {
                    onTap();
                    Navigator.of(context).pop();
                    
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
                    backgroundColor: MaterialStateProperty.all(Color(0xffC53232))
                  ),
                  child: Text(
                    'UNLOCK',
                    style: GoogleFonts.jura(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    )
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
