import 'package:flutter/material.dart';
import 'package:rickandmortyapi/src/app/features/home/presentation/pages/home_page.dart';
import 'package:rickandmortyapi/src/core/responsive/app_responsive.dart';
import 'package:rickandmortyapi/src/core/routes/app_navigator.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const route = "/";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      AppNavigator.pushReplace(context, HomePage.route);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Rick and Morty",
          style: AppResponsive.responsiveTextStyle(
            context,
            fsize: AppResponsive.kmaxExtraLargeFont(context) + 10,
            fweight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
