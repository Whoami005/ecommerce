import 'package:ecommerce/feature/home_store/data/datasources/home_store_remote_data_source.dart';
import 'package:ecommerce/feature/home_store/data/repositories/home_store_repositoriy_impl.dart';
import 'package:ecommerce/feature/home_store/domain/repositories/home_store_repository.dart';
import 'package:ecommerce/feature/home_store/domain/usecases/get_all_phones.dart';
import 'package:ecommerce/feature/home_store/presentation/bloc/home_bloc.dart';
import 'package:ecommerce/feature/my_cart/data/datasources/my_cart_remote_data_sources.dart';
import 'package:ecommerce/feature/my_cart/data/repositories/my_cart_repository_impl.dart';
import 'package:ecommerce/feature/my_cart/domain/repositories/my_cart_repository.dart';
import 'package:ecommerce/feature/my_cart/domain/usecases/get_all_cart.dart';
import 'package:ecommerce/feature/my_cart/presentation/bloc/my_cart_bloc.dart';
import 'package:ecommerce/feature/product_details/data/datasources/product_details_remote_data_source.dart';
import 'package:ecommerce/feature/product_details/data/repositories/product_details_repository_impl.dart';
import 'package:ecommerce/feature/product_details/domain/repositories/product_details_repository.dart';
import 'package:ecommerce/feature/product_details/domain/usecases/get_all_product_details.dart';
import 'package:ecommerce/feature/product_details/presentation/bloc/product_details_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt injection = GetIt.instance;

Future<void> initializeDependencies() async {
  injection.registerFactory(() => HomeBloc(getAllPhones: injection()));
  injection.registerFactory(() => ProductDetailsBloc(getAllProductDetailsUseCase: injection()));
  injection.registerFactory(() => MyCartBloc(getAllCartUseCase: injection()));
  
  injection.registerLazySingleton(() => GetAllPhonesUseCase(injection()));
  injection.registerLazySingleton(() => GetAllProductDetailsUseCase(injection()));
  injection.registerLazySingleton(() => GetAllCartUseCase(injection()));

  injection.registerLazySingleton<HomeStoreRepository>(() => HomeStoreRepositoryImpl(injection()));
  injection.registerLazySingleton<ProductDetailsRepository>(() => ProductDetailsRepositoryImpl(injection()));
  injection.registerLazySingleton<MyCartRepository>(() => MyCartRepositoryImpl(injection()));
  
  injection.registerLazySingleton<HomeStoreRemoteDataSource>(() => HomeStoreRemoteDataSourceImpl());
  injection.registerLazySingleton<ProductDetailsRemoteDataSource>(() => ProductDetailsRemoteDataSourceImpl());
  injection.registerLazySingleton<MyCartRemoteDataSources>(() => MyCartRemoteDataSourcesImpl());
}