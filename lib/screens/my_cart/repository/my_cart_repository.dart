import 'package:ecommerce/screens/my_cart/models/cart_model.dart';
import 'package:ecommerce/screens/my_cart/repository/my_cart_api.dart';

class CartRepository {
  final MyCartProvider _myCartProvider = MyCartProvider();
  Future<CartModel> getAllCart() => _myCartProvider.getCart();
}