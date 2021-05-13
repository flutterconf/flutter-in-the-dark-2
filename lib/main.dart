import 'package:desafio_flutter_in_the_dark_2/router/router.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme.of(context).copyWith(backgroundColor: black),
        backgroundColor: blackLight,
      ),
      routerDelegate: FitdRouter.routemaster,
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
