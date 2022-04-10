import 'package:ecommerce/feature/home_store/data/data_sources/home_store_remote_data_source.dart';
import 'package:ecommerce/feature/home_store/data/repositories/home_store_repositoriy_impl.dart';
import 'package:ecommerce/feature/home_store/domain/repositories/home_store_repository.dart';
import 'package:ecommerce/feature/home_store/domain/use_cases/get_all_phones.dart';
import 'package:ecommerce/feature/home_store/presentation/bloc/home_bloc.dart';
import 'package:ecommerce/feature/my_cart/data/data_sources/my_cart_remote_data_sources.dart';
import 'package:ecommerce/feature/my_cart/data/repositories/my_cart_repository_impl.dart';
import 'package:ecommerce/feature/my_cart/domain/repositories/my_cart_repository.dart';
import 'package:ecommerce/feature/my_cart/domain/use_cases/get_all_cart.dart';
import 'package:ecommerce/feature/my_cart/presentation/bloc/my_cart_bloc.dart';
import 'package:ecommerce/feature/product_details/data/data_sources/product_details_remote_data_source.dart';
import 'package:ecommerce/feature/product_details/data/repositories/product_details_repository_impl.dart';
import 'package:ecommerce/feature/product_details/domain/repositories/product_details_repository.dart';
import 'package:ecommerce/feature/product_details/domain/use_cases/get_all_product_details.dart';
import 'package:ecommerce/feature/product_details/presentation/bloc/product_details_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt injection = GetIt.instance;

Future<void> initializeDependencies() async {
  injection.registerFactory(() => HomeStoreBloc(getAllPhones: injection()));
  injection.registerFactory(
      () => ProductDetailsBloc(getAllProductDetailsUseCase: injection()));
  injection.registerFactory(() => MyCartBloc(getAllCartUseCase: injection()));

  injection.registerLazySingleton(
      () => GetAllPhonesUseCase(homeStoreRepository: injection()));
  injection.registerLazySingleton(() =>
      GetAllProductDetailsUseCase(productDetailsDomainRepository: injection()));
  injection.registerLazySingleton(
      () => GetAllCartUseCase(myCartRepository: injection()));

  injection.registerLazySingleton<HomeStoreRepository>(
      () => HomeStoreRepositoryImpl(homeStoreRemoteDataSource: injection()));
  injection.registerLazySingleton<ProductDetailsRepository>(() =>
      ProductDetailsRepositoryImpl(
          productDetailsRemoteDataSource: injection()));
  injection.registerLazySingleton<MyCartRepository>(
      () => MyCartRepositoryImpl(myCartRemoteDataSources: injection()));

  injection.registerLazySingleton<HomeStoreRemoteDataSource>(
      () => HomeStoreRemoteDataSourceImpl());
  injection.registerLazySingleton<ProductDetailsRemoteDataSource>(
      () => ProductDetailsRemoteDataSourceImpl());
  injection.registerLazySingleton<MyCartRemoteDataSources>(
      () => MyCartRemoteDataSourcesImpl());
}
