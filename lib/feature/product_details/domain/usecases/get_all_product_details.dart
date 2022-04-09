import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/core/usecases/core_usecases.dart';
import 'package:ecommerce/feature/product_details/domain/entities/product_details_entity.dart';
import 'package:ecommerce/feature/product_details/domain/repositories/product_details_domain_repository.dart';

class GetAllProductDetails extends UseCase<ProductDetailsEntity, void>{
  final ProductDetailsDomainRepository productDetailsDomainRepository;

  GetAllProductDetails(this.productDetailsDomainRepository);

  @override
  Future<Either<Failure, ProductDetailsEntity>> call(void params) async{
    return await productDetailsDomainRepository.getAllProductDetails();
  }
}