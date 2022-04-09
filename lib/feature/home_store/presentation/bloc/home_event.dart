part of 'home_bloc.dart';

@immutable
abstract class HomeStoreEvent extends Equatable {
  const HomeStoreEvent();

  @override
  List<Object?> get props => [];
}

class HomeStoreLoadEvent extends HomeStoreEvent {
  const HomeStoreLoadEvent();

  @override
  List<Object?> get props => [];
}
