import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/product_details/domain/entities/product_details_entity.dart';
import 'package:ecommerce/feature/product_details/domain/usecases/get_all_product_details.dart';
import 'package:equatable/equatable.dart';

part 'product_details_event.dart';

part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final GetAllProductDetailsUseCase getAllProductDetailsUseCase;

  ProductDetailsBloc({required this.getAllProductDetailsUseCase})
      : super(ProductDetailsInitialState()) {
    on<ProductLoadEvent>((event, emit) async {
      emit(ProductDetailsInitialState());
      final _productInfo = await getAllProductDetailsUseCase();
      _productInfo.fold(
          (l) => emit(const ProductDetailsErrorState(errorMessage: 'Ошибка Bloc Api')),
          (r) => emit(ProductDetailsLoadedState(productInfo: r)));
    });
  }
}
