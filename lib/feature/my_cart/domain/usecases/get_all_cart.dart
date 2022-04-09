import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/core/usecases/core_usecases.dart';
import 'package:ecommerce/feature/my_cart/domain/entities/cart_entity.dart';
import 'package:ecommerce/feature/my_cart/domain/repositories/my_cart_domain_repository.dart';

class GetAllCart extends UseCase<CartEntity, void> {
  final MyCartDomainRepository myCartDomainRepository;

  GetAllCart(this.myCartDomainRepository);

  @override
  Future<Either<Failure, CartEntity>> call(void params) async {
    return await myCartDomainRepository.getAllCart();
  }
}
