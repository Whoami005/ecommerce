import 'dart:convert';

import 'package:ecommerce/core/error/exception.dart';
import 'package:ecommerce/feature/product_details/data/models/product_details_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductDetailsRemoteDataSource {
  Future<ProductDetailsModel> getProductDetails();
}

class ProductDetailsRemoteDataSourceImpl
    extends ProductDetailsRemoteDataSource {
  @override
  Future<ProductDetailsModel> getProductDetails() async {
    final url = Uri.parse(
        'https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final productJson = json.decode(response.body);
      return ProductDetailsModel.fromJson(productJson);
    } else {
      throw ServerException();
    }
  }
}
