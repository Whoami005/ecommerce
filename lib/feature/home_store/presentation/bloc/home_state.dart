part of 'home_bloc.dart';

@immutable
abstract class HomeStoreState extends Equatable {
  const HomeStoreState();

  @override
  List<Object?> get props => [];
}

class HomeStoreLoadingState extends HomeStoreState {
  @override
  List<Object?> get props => [];
}

class HomeStoreLoadedState extends HomeStoreState {
  final HomeEntity homeInfo;

  const HomeStoreLoadedState({
    required this.homeInfo,
  });

  @override
  List<Object?> get props => [homeInfo];
}

class HomeStoreErrorState extends HomeStoreState {
  final String errorMessage;

  const HomeStoreErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
