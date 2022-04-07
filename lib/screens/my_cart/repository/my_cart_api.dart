import 'dart:convert';

import 'package:ecommerce/screens/my_cart/models/cart_model.dart';
import 'package:http/http.dart' as http;

class MyCartProvider {
  Future<CartModel> getCart() async {
    final url = Uri.parse(
        'https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149');
    final response = await http.get(url);

    if (response.statusCode == 200){
      final cartJson = jsonDecode(response.body);
      return CartModel.fromJson(cartJson);
    }
    else {
      throw Exception('Ошибка апи');
    }
  }
}
