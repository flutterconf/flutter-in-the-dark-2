import 'package:desafio_flutter_in_the_dark_2/ui/characters.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Color(0xff212121), primaryColor: Color(0xffc53232)),
      home: CharactersPage(),
    );
  }
}
