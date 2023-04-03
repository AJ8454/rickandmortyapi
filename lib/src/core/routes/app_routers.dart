import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rickandmortyapi/src/app/features/home/presentation/pages/home_page.dart';
import 'package:rickandmortyapi/src/app/features/splash/splash_page.dart';

class AppRoute {
  static Route<dynamic>? router(RouteSettings settings) {
    final dynamic arguments = settings.arguments;
    log("navigating ${settings.name}");
    switch (settings.name) {
      case SplashPage.route:
        return MaterialPageRoute(builder: (context) => const SplashPage());

      case HomePage.route:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
    return null;
  }
}
