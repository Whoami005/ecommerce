import 'package:ecommerce/entities/home_store_entity.dart';

class HomeStoreModel extends HomeStoreEntity {
  const HomeStoreModel({
    required int id,
    required bool? isNew,
    required String title,
    required String subtitle,
    required String picture,
    required bool isBuy,
  }) : super(
            id: id,
            isNew: isNew,
            title: title,
            subtitle: subtitle,
            picture: picture,
            isBuy: isBuy);

  factory HomeStoreModel.fromJson(Map<String, dynamic> json) {
    return HomeStoreModel(
        id: json["id"],
        isNew: json["is_new"] ?? false,
        title: json["title"],
        subtitle: json["subtitle"],
        picture: json["picture"],
        isBuy: json["is_buy"]);
  }
}
