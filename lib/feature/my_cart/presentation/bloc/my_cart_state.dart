part of 'my_cart_bloc.dart';

@immutable
abstract class MyCartState extends Equatable {}

class MyCartInitialState extends MyCartState {
  @override
  List<Object?> get props => [];
}

class MyCartLoadState extends MyCartState {
  final CartModel cartInfo;

  MyCartLoadState({required this.cartInfo});

  @override
  List<Object?> get props => [cartInfo];
}
