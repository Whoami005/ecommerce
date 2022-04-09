import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/core/usecases/core_usecases.dart';
import 'package:ecommerce/feature/home_store/domain/entities/home_entity.dart';
import 'package:ecommerce/feature/home_store/domain/repositories/home_store_repository.dart';


class GetAllPhonesUseCase extends UseCase<HomeEntity, void>{
  final HomeStoreRepository homeStoreRepository;

  GetAllPhonesUseCase(this.homeStoreRepository);

  @override
  Future<Either<Failure, HomeEntity>> call() async {
    return await homeStoreRepository.getAllPhones();
  }
}
