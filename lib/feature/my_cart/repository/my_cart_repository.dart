
import 'package:ecommerce/feature/my_cart/data/datasources/api/api_my_cart.dart';
import 'package:ecommerce/feature/my_cart/data/models/cart_model.dart';

class CartRepository {
  final MyCartProvider _myCartProvider = MyCartProvider();

  Future<CartModel> getAllCart() => _myCartProvider.getCart();
}
