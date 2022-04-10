import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/exception.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/feature/product_details/data/data_sources/product_details_remote_data_source.dart';
import 'package:ecommerce/feature/product_details/domain/entities/product_details_entity.dart';
import 'package:ecommerce/feature/product_details/domain/repositories/product_details_repository.dart';

class ProductDetailsRepositoryImpl extends ProductDetailsRepository {
  final ProductDetailsRemoteDataSource productDetailsRemoteDataSource;

  const ProductDetailsRepositoryImpl({required this.productDetailsRemoteDataSource});

  @override
  Future<Either<Failure, ProductDetailsEntity>> getAllProductDetails() async {
    try {
      final remoteProductDetails =
          await productDetailsRemoteDataSource.getProductDetails();
      return Right(remoteProductDetails);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
