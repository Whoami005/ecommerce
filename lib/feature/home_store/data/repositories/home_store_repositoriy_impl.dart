import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/exception.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/feature/home_store/data/datasources/home_store_remote_data_source.dart';
import 'package:ecommerce/feature/home_store/domain/entities/home_entity.dart';
import 'package:ecommerce/feature/home_store/domain/repositories/home_store_repository.dart';

class HomeStoreRepositoryImpl extends HomeStoreRepository {
  final HomeStoreRemoteDataSource homeStoreRemoteDataSource;

  HomeStoreRepositoryImpl(this.homeStoreRemoteDataSource);

  @override
  Future<Either<Failure, HomeEntity>> getAllPhones() async {
    try {
      final remoteHome = await homeStoreRemoteDataSource.getHome();
      return Right(remoteHome);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
