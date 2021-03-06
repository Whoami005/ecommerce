import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/my_cart/domain/entities/cart_entity.dart';
import 'package:ecommerce/feature/my_cart/domain/use_cases/get_all_cart.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'my_cart_event.dart';

part 'my_cart_state.dart';

class MyCartBloc extends Bloc<MyCartEvent, MyCartState> {
  final GetAllCartUseCase getAllCartUseCase;

  MyCartBloc({required this.getAllCartUseCase}) : super(MyCartLoadingState()) {
    on<MyCartLoadEvent>((event, emit) async {
      emit(MyCartLoadingState());
      final _myCartInfo = await getAllCartUseCase();
      _myCartInfo.fold(
          (l) => emit(MyCartErrorState(errorMessage: 'Ошибка Bloc Api')),
          (r) => emit(MyCartLoadedState(cartInfo: r)));
    });
  }
}
