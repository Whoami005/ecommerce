import 'dart:convert';

import 'package:ecommerce/core/error/exception.dart';
import 'package:ecommerce/feature/home_store/data/models/home_model.dart';
import 'package:http/http.dart' as http;

abstract class HomeStoreRemoteDataSource {
  Future<HomeModel> getHome();
}

class HomeStoreRemoteDataSourceImpl implements HomeStoreRemoteDataSource {
  // final http.Client client;
  //
  // const HomeStoreRemoteDataSourceImpl({required this.client});
  @override
  Future<HomeModel> getHome() async {
    final url = Uri.parse(
        'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final homeJson = json.decode(response.body);
      return HomeModel.fromJson(homeJson);
    } else {
      throw ServerException();
      // Exception('Ошибка: ${response.reasonPhrase}');
    }
  }
}
