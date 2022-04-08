part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadedState extends HomeState {
  final HomeModel homeInfo;

  const HomeLoadedState({
    required this.homeInfo,
  });

  @override
  List<Object?> get props => [homeInfo];
}

class HomeErrorState extends HomeState {
  final String errorMessage;

  const HomeErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
