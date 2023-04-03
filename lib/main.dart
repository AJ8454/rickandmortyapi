import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortyapi/src/app/rick_morty_app.dart';
import 'package:rickandmortyapi/src/core/evn.dart';
import 'package:rickandmortyapi/src/core/helpers/app_bloc_observer.dart';
import 'package:rickandmortyapi/src/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await AppEnvironment.setupEnv(Environment.production);
  await di.init();
  runApp(const RickAndMortyApp());
}
