part of 'my_cart_bloc.dart';

@immutable
abstract class MyCartEvent extends Equatable {
  const MyCartEvent();
}

class MyCartLoadEvent extends MyCartEvent {
  const MyCartLoadEvent();

  @override
  List<Object?> get props => [];
}
