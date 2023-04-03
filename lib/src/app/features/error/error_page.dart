import 'package:rickandmortyapi/src/app/features/splash/splash_page.dart';
import 'package:rickandmortyapi/src/core/responsive/app_responsive.dart';
import 'package:rickandmortyapi/src/core/routes/app_navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const CustomError({Key? key, required this.errorDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kDebugMode
                    ? errorDetails.summary.toString()
                    : 'Oups! Something went wrong!',
                textAlign: TextAlign.center,
                style: AppResponsive.responsiveTextStyle(context,
                    tColor: kDebugMode ? Colors.red : null,
                    fweight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text(
                kDebugMode
                    ? 'https://docs.flutter.dev/testing/errors'
                    : "We encountered an error and we've notified our engineering team about it. Sorry for the inconvenience caused.",
                textAlign: TextAlign.center,
                style: AppResponsive.responsiveTextStyle(context, fsize: 12),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  AppNavigator.pushReplace(context, SplashPage.route);
                },
                child: const Text("Click here to go back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
