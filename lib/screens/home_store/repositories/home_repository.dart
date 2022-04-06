import '../models/home_model.dart';
import 'api_home_store.dart';


class HomeRepository {
  final HomeProvider _homeProvider = HomeProvider();
  Future<HomeModel> getAllPhones() => _homeProvider.getHome();
}