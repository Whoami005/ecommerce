import 'package:ecommerce/feature/my_cart/data/models/basket_model.dart';
import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final List<BasketModel> basket;
  final String delivery;
  final String id;
  final int total;

  const CartEntity({
    required this.basket,
    required this.delivery,
    required this.id,
    required this.total,
  });

  @override
  List<Object?> get props => [basket, delivery, id, total];
}
