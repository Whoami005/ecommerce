import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  const UseCase();

  Future<Either<Failure, Type>> call();
}
