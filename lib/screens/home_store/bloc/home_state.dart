part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeInitialState extends HomeState {}



class HomeLoadedState extends HomeState{
  final HomeModel homeInfo;

  const HomeLoadedState({
    required this.homeInfo,
  });

}

// class HomeLoadedState extends HomeStoreState {
//   final HomeAndBestModel? _homeAndBestLoaded;
//
//   const HomeLoadedState({
//     HomeAndBestModel? homeAndBestLoaded,
//   }) : _homeAndBestLoaded = homeAndBestLoaded;
//
//   HomeAndBestModel get homeAndBestLoaded => _homeAndBestLoaded!;
//
//   HomeLoadedState copyWith({
//     HomeAndBestModel? homeAndBestLoaded,
//   }) {
//     return HomeLoadedState(
//       homeAndBestLoaded: homeAndBestLoaded ?? _homeAndBestLoaded,
//     );
//   }
// }
