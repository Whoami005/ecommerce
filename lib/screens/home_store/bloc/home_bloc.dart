import 'package:bloc/bloc.dart';
import 'package:ecommerce/models/home_model.dart';
import 'package:ecommerce/repositories/home_repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(HomeInitialState()) {
    on<HomeLoadEvent>((event, emit) async {
      emit(HomeInitialState());
      final _homeInfo = await homeRepository.getAllUsers();
      emit(HomeLoadedState(homeInfo: _homeInfo));
    });
  }
}