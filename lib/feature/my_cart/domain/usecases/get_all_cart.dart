import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/core/usecases/core_usecases.dart';
import 'package:ecommerce/feature/my_cart/domain/entities/cart_entity.dart';
import 'package:ecommerce/feature/my_cart/domain/repositories/my_cart_repository.dart';

class GetAllCartUseCase extends UseCase<CartEntity, void> {
  final MyCartRepository myCartRepository;

  GetAllCartUseCase(this.myCartRepository);

  @override
  Future<Either<Failure, CartEntity>> call() async {
    return await myCartRepository.getAllCart();
  }
}
