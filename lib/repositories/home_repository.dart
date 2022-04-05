import 'package:ecommerce/models/home_model.dart';
import 'package:ecommerce/repositories/api_home_store.dart';

class HomeRepository {
  final HomeProvider _homeProvider = HomeProvider();
  Future<HomeModel> getAllPhones() => _homeProvider.getHome();
}