
import 'package:ecommerce/screens/home_store/models/best_seller_model.dart';
import 'package:ecommerce/screens/home_store/models/home_store_mode.dart';
import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable {
  final List<HomeStoreModel> homeStore;
  final List<BestSellerModel> bestSeller;

  const HomeEntity({
    required this.homeStore,
    required this.bestSeller,
  });

  @override
  List<Object?> get props => [homeStore, bestSeller];
}