import 'package:ecommerce/feature/my_cart/domain/entities/basket_entity.dart';

class BasketModel extends BasketEntity {
  const BasketModel(
      {required int id,
      required String images,
      required int price,
      required String title})
      : super(id: id, images: images, price: price, title: title);

  factory BasketModel.fromJson(Map<String, dynamic> json) {
    return BasketModel(
      id: json['id'] as int,
      images: json['images'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
    );
  }
}
