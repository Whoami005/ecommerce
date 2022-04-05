import 'package:bloc/bloc.dart';
import 'package:ecommerce/models/home_model.dart';
import 'package:ecommerce/repositories/home_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(HomeInitialState()) {
    on<HomeLoadEvent>((event, emit) async {
      emit(HomeInitialState());
      try {
        final _homeInfo = await homeRepository.getAllPhones();
        emit(HomeLoadedState(homeInfo: _homeInfo));
      } catch (error) {
        emit(const HomeErrorState(errorMessage: 'Ошибка'));
      }
    });
  }
}
