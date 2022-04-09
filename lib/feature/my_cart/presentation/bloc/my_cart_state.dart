part of 'my_cart_bloc.dart';

@immutable
abstract class MyCartState extends Equatable {}

class MyCartLoadingState extends MyCartState {
  @override
  List<Object?> get props => [];
}

class MyCartLoadedState extends MyCartState {
  final CartEntity cartInfo;

  MyCartLoadedState({required this.cartInfo});

  @override
  List<Object?> get props => [cartInfo];
}

class MyCartErrorState extends MyCartState {
  final String errorMessage;

  MyCartErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}