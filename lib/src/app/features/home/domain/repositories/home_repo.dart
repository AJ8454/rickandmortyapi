import 'package:dartz/dartz.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/models/rick_morty_model.dart';
import 'package:rickandmortyapi/src/core/errors/failures.dart';

abstract class HomeRepository {
  Future<Either<Failure, RickMortyModel>> getData(int token);
}
