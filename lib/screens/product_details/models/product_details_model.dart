import 'package:ecommerce/screens/product_details/entities/product_details_entity.dart';

class ProductDetailsModel extends ProductDetailsEntity {
  const ProductDetailsModel(
      {required String cpu,
      required String camera,
      required List<String> capacity,
      required List<String> color,
      required String id,
      required List<String> images,
      required bool isFavorites,
      required int price,
      required double rating,
      required String sd,
      required String ssd,
      required String title})
      : super(
            cpu: cpu,
            camera: camera,
            capacity: capacity,
            color: color,
            id: id,
            images: images,
            isFavorites: isFavorites,
            price: price,
            rating: rating,
            sd: sd,
            ssd: ssd,
            title: title);

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsModel(
      cpu: json['CPU'] as String,
      camera: json['camera'] as String,
      capacity:
          (json['capacity'] as List<dynamic>).map((e) => e as String).toList(),
      color: (json['color'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isFavorites: json['isFavorites'] as bool,
      price: json['price'] as int,
      rating: json['rating'] as double,
      sd: json['sd'] as String,
      ssd: json['ssd'] as String,
      title: json['title'] as String,
    );
  }
}
