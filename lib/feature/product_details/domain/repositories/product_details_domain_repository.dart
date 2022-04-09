import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/feature/product_details/domain/entities/product_details_entity.dart';

abstract class ProductDetailsDomainRepository {
  Future<Either<Failure, ProductDetailsEntity>> getAllProductDetails();
}