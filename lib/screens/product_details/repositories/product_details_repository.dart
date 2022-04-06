import 'package:ecommerce/screens/product_details/models/product_details_model.dart';
import 'package:ecommerce/screens/product_details/repositories/api_product_details.dart';

class ProductDetailsRepository{
  final ProductDetailsProvaider _productDetailsProvaider = ProductDetailsProvaider();
  Future<ProductDetailsModel> getAllProductDetails() => _productDetailsProvaider.getProductDetails();
}