import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/home_store/domain/entities/home_entity.dart';
import 'package:ecommerce/feature/home_store/domain/usecases/get_all_phones.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllPhonesUseCase getAllPhones;

  HomeBloc({required this.getAllPhones}) : super(HomeInitialState()) {
    on<HomeLoadEvent>((event, emit) async {
      emit(HomeInitialState());

      final _homeInfo = await getAllPhones();
      _homeInfo.fold(
          (l) => emit(const HomeErrorState(errorMessage: 'Ошибка Bloc Api')),
          (r) => emit(HomeLoadedState(homeInfo: r)));
    });
  }
}
