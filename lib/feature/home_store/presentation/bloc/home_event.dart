part of 'home_bloc.dart';

@immutable
abstract class HomeEvent  extends Equatable{
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class HomeLoadEvent extends HomeEvent{
  const HomeLoadEvent();

  @override
  List<Object?> get props => [];
}
