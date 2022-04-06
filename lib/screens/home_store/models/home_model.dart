import 'package:ecommerce/screens/home_store/entities/home_entity.dart';
import 'package:ecommerce/screens/home_store/models/best_seller_model.dart';
import 'package:ecommerce/screens/home_store/models/home_store_mode.dart';


class HomeModel extends HomeEntity {
  const HomeModel({
    required List<HomeStoreModel> homeStore,
    required List<BestSellerModel> bestSeller,
  }) : super(homeStore: homeStore, bestSeller: bestSeller);

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      homeStore: (json['home_store'] as List<dynamic>)
          .map((e) => HomeStoreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSeller: (json['best_seller'] as List<dynamic>)
          .map((e) => BestSellerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
