import 'package:ecommerce/feature/home_store/domain/entities/best_seller_entity.dart';

class BestSellerModel extends BestSellerEntity {
  const BestSellerModel(
      {required int id,
      required bool isFavorites,
      required String title,
      required int priceWithoutDiscount,
      required int discountPrice,
      required String picture})
      : super(
            id: id,
            isFavorites: isFavorites,
            title: title,
            priceWithoutDiscount: priceWithoutDiscount,
            discountPrice: discountPrice,
            picture: picture);

  factory BestSellerModel.fromJson(Map<String, dynamic> json) {
    return BestSellerModel(
        id: json['id'],
        isFavorites: json['is_favorites'],
        title: json['title'],
        priceWithoutDiscount: json['price_without_discount'],
        discountPrice: json['discount_price'],
        picture: json['picture']);
  }
}
