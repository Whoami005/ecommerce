import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/feature/my_cart/domain/entities/cart_entity.dart';

abstract class MyCartDomainRepository {
  Future<Either<Failure, CartEntity>> getAllCart();
}