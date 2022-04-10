import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/home_store/domain/entities/home_entity.dart';
import 'package:ecommerce/feature/home_store/domain/use_cases/get_all_phones.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeStoreBloc extends Bloc<HomeStoreEvent, HomeStoreState> {
  final GetAllPhonesUseCase getAllPhones;

  HomeStoreBloc({required this.getAllPhones}) : super(HomeStoreLoadingState()) {
    on<HomeStoreLoadEvent>((event, emit) async {
      emit(HomeStoreLoadingState());

      final _homeInfo = await getAllPhones();
      _homeInfo.fold(
          (l) => emit(const HomeStoreErrorState(errorMessage: 'Ошибка Bloc Api')),
          (r) => emit(HomeStoreLoadedState(homeInfo: r)));
    });
  }
}
