import 'package:ecommerce/models/best_seller.dart';
import 'package:ecommerce/models/home_store.dart';

class HomeModel {
  List<HomeStoreInfo> homeStore;
  List<BestSellerInfo> bestSeller;

  HomeModel({
    required this.homeStore,
    required this.bestSeller,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      homeStore: (json['home_store'] as List<dynamic>)
          .map((e) => HomeStoreInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSeller: (json['best_seller'] as List<dynamic>)
          .map((e) => BestSellerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
