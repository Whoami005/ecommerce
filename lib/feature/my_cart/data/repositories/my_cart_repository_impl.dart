import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/exception.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/feature/my_cart/data/data_sources/my_cart_remote_data_sources.dart';
import 'package:ecommerce/feature/my_cart/domain/entities/cart_entity.dart';
import 'package:ecommerce/feature/my_cart/domain/repositories/my_cart_repository.dart';

class MyCartRepositoryImpl extends MyCartRepository {
  final MyCartRemoteDataSources myCartRemoteDataSources;

  const MyCartRepositoryImpl({required this.myCartRemoteDataSources});

  @override
  Future<Either<Failure, CartEntity>> getAllCart() async{
    try {
      final remoteMyCart = await myCartRemoteDataSources.getCart();
      return Right(remoteMyCart);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

}