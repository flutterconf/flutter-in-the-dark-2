import 'package:desafio_flutter_in_the_dark_2/src/features/home/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
