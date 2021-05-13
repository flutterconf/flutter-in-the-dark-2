import 'package:desafio_flutter_in_the_dark_2/pages/lock_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class FitdRouter {
  static final routes = RouteMap(routes: {
    '/': (_) => MaterialPage(
          child: LockScreen(),
        ),
  });
  static final routemaster = RoutemasterDelegate(
    routesBuilder: (context) => routes,
  );
}
