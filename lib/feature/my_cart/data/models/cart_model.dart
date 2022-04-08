import 'package:ecommerce/feature/my_cart/data/models/basket_model.dart';
import 'package:ecommerce/feature/my_cart/domain/entities/cart_entity.dart';

class CartModel extends CartEntity {
  const CartModel(
      {required List<BasketModel> basket,
      required String delivery,
      required String id,
      required int total})
      : super(basket: basket, delivery: delivery, id: id, total: total);

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      basket: (json['basket'] as List<dynamic>)
          .map((e) => BasketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'] as String,
      id: json['id'] as String,
      total: json['total'] as int,
    );
  }
}
