import 'package:ecommerce/feature/home_store/data/models/best_seller_model.dart';
import 'package:ecommerce/feature/home_store/data/models/home_store_mode.dart';
import 'package:ecommerce/feature/home_store/domain/entities/home_entity.dart';

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
