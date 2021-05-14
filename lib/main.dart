import 'package:desafio_flutter_in_the_dark_2/pages/home_page.dart';
import 'package:desafio_flutter_in_the_dark_2/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
