import 'package:ecommerce/feature/product_details/data/datasources/api/api_product_details.dart';
import 'package:ecommerce/feature/product_details/data/models/product_details_model.dart';

class ProductDetailsRepository {
  final ProductDetailsProvaider _productDetailsProvaider =
      ProductDetailsProvaider();

  Future<ProductDetailsModel> getAllProductDetails() =>
      _productDetailsProvaider.getProductDetails();
}
