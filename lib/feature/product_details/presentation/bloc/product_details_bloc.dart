import 'package:bloc/bloc.dart';
import 'package:ecommerce/feature/product_details/data/models/product_details_model.dart';
import 'package:ecommerce/feature/product_details/repositories/product_details_repository.dart';
import 'package:equatable/equatable.dart';

part 'product_details_event.dart';

part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final ProductDetailsRepository productDetailsRepository;

  ProductDetailsBloc({required this.productDetailsRepository})
      : super(ProductInitialState()) {
    on<ProductLoadEvent>((event, emit) async {
      emit(ProductInitialState());
      try {
        final _productInfo =
            await productDetailsRepository.getAllProductDetails();
        emit(ProductLoadedState(productInfo: _productInfo));
      } catch (e) {
        emit(const ProductErrorState(errorMessage: 'Ошибка апи'));
      }
    });
  }
}
