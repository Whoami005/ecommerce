import 'package:ecommerce/feature/home_store/data/datasources/api/api_home_store.dart';
import 'package:ecommerce/feature/home_store/data/models/home_model.dart';

class HomeRepository {
  final HomeProvider _homeProvider = HomeProvider();

  Future<HomeModel> getAllPhones() => _homeProvider.getHome();
}
