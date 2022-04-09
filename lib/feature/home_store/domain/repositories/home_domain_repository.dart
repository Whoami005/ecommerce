import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/feature/home_store/domain/entities/home_entity.dart';

abstract class HomeDomainRepository {
  Future<Either<Failure, HomeEntity>> getAllPhones();

}