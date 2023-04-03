import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/models/rick_morty_model.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/usecases/home_usecase.dart';
import 'package:rickandmortyapi/src/core/errors/failures.dart';
import 'package:rickandmortyapi/src/core/utils/app_strings.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUsecase homeUsecase;
  final int _pageToken = 1;
  final List<Result> data = [];
  HomeBloc({required this.homeUsecase}) : super(HomeInitial()) {
    on<GetRMDataEvent>((event, emit) => _onGetRMDataEvent(event, emit));
  }

  _onGetRMDataEvent(GetRMDataEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());

    final successOrFail = await homeUsecase.callGetData(_pageToken);

    emit(successOrFail.fold(
      (l) => HomeErrorState(_mapFailureToMessage(l)),
      (r) {
        data.addAll(r.results);
        return HomeLoadedState(data);
      },
    ));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppStrings.serverFailureMessage;
      case EmptyCacheFailure:
        return AppStrings.emptyCacheFailureMessage;
      case OfflineFailure:
        return AppStrings.offlineFailureMessage;
      default:
        return "Unexpected Error. Please try again later.";
    }
  }
}
