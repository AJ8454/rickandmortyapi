import 'package:injectable/injectable.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/repositories/home_repo.dart';

@injectable
class HomeUsecase {
  final HomeRepository homeRepository;

  HomeUsecase({required this.homeRepository});
}
