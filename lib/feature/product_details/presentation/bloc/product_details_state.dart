part of 'product_details_bloc.dart';

abstract class ProductDetailsState extends Equatable {
  const ProductDetailsState();

  @override
  List<Object?> get props => [];
}

class ProductDetailsInitialState extends ProductDetailsState {
  @override
  List<Object> get props => [];
}

class ProductDetailsLoadedState extends ProductDetailsState {
  final ProductDetailsEntity productInfo;

  const ProductDetailsLoadedState({required this.productInfo});

  @override
  List<Object?> get props => [productInfo];
}

class ProductDetailsErrorState extends ProductDetailsState {
  final String errorMessage;

  const ProductDetailsErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
