import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortyapi/src/app/features/home/presentation/bloc/home_bloc.dart';
import 'package:rickandmortyapi/src/injection_container.dart';

class AppConfigProvider {
  static get blocProviders {
    return [
      // BlocProvider(create: (context) => getIt<HomeBloc>()),
    ];
  }
}
