import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rickandmortyapi/src/injection_container.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configInjectin() => getIt.init();
