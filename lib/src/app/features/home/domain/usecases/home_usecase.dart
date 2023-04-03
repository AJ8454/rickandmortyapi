import 'package:dartz/dartz.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/models/rick_morty_model.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/repositories/home_repo.dart';
import 'package:rickandmortyapi/src/core/errors/failures.dart';

class HomeUsecase {
  final HomeRepository homeRepository;

  HomeUsecase({required this.homeRepository});

  Future<Either<Failure, RickMortyModel>> callGetData(int token) async {
    return await homeRepository.getData(token);
  }
}
