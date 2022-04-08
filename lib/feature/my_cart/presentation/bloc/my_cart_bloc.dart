import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/my_cart/data/models/cart_model.dart';
import 'package:ecommerce/feature/my_cart/repository/my_cart_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'my_cart_event.dart';

part 'my_cart_state.dart';

class MyCartBloc extends Bloc<MyCartEvent, MyCartState> {
  final CartRepository cartRepository;

  MyCartBloc({required this.cartRepository}) : super(MyCartInitialState()) {
    on<MyCartLoadEvent>((event, emit) async {
      emit(MyCartInitialState());
      final _myCartInfo = await cartRepository.getAllCart();
      emit(MyCartLoadState(cartInfo: _myCartInfo));
    });
  }
}
