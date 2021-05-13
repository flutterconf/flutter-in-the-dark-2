import 'package:desafio_flutter_in_the_dark_2/common/app_routes.dart';
import 'package:desafio_flutter_in_the_dark_2/features/panel_list/presentation/pages/panel_list_page.dart';
import 'package:flutter/material.dart';

import 'features/panel_skils/presentation/pages/panel_skils_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.panel_list,
      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.panel_list) {
          return MaterialPageRoute(builder: (context) => PanelListPage());
        } else if (settings.name == AppRoutes.panle_skils) {
          return MaterialPageRoute(builder: (context) => PanelSkilsPage());
        }
      },
    );
  }
}
