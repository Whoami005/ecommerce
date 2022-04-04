part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {
  const HomeEvent();
}

class HomeLoadEvent extends HomeEvent{
  const HomeLoadEvent();
}
