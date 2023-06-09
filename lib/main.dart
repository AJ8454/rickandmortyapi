import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rickandmortyapi/src/app/rick_morty_app.dart';
import 'package:rickandmortyapi/src/core/evn.dart';
import 'package:rickandmortyapi/src/core/helpers/app_bloc_observer.dart';
import 'package:rickandmortyapi/src/core/utils/app_strings.dart';
import 'package:rickandmortyapi/src/injection_container.dart' as di;

import 'src/app/features/home/domain/models/rick_morty_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await AppEnvironment.setupEnv(Environment.production);
  //* inject dependencies
  await di.init();

  //* hive local database setup
  await Hive.initFlutter();
  Hive.registerAdapter(RickMortyModelAdapter());
  await Hive.openBox(AppStrings.rAndMDBBox);

  runApp(const RickAndMortyApp());
}
