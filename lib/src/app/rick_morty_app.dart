import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortyapi/src/app/app_config_providers.dart';
import 'package:rickandmortyapi/src/app/features/error/error_page.dart';
import 'package:rickandmortyapi/src/core/routes/app_routers.dart';
import 'package:rickandmortyapi/src/core/utils/app_strings.dart';

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MultiBlocProvider(
      providers: AppConfigProvider.blocProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        initialRoute: "/",
        onGenerateRoute: AppRoute.router,
        builder: (context, child) {
          ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
            return CustomError(errorDetails: errorDetails);
          };
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
      ),
    );
  }
}
