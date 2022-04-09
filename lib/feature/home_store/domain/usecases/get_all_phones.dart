import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/core/usecases/core_usecases.dart';
import 'package:ecommerce/feature/home_store/domain/entities/home_entity.dart';
import 'package:ecommerce/feature/home_store/domain/repositories/home_domain_repository.dart';


class GetAllPhones extends UseCase<HomeEntity, void>{
  final HomeDomainRepository homeDomainRepositoryRepository;

  GetAllPhones(this.homeDomainRepositoryRepository);

  @override
  Future<Either<Failure, HomeEntity>> call(void params) async {
    return await homeDomainRepositoryRepository.getAllPhones();
  }
}
