part of 'product_details_bloc.dart';

abstract class ProductDetailsState extends Equatable {
  const ProductDetailsState();

  @override
  List<Object?> get props => [];
}

class ProductInitialState extends ProductDetailsState {
  @override
  List<Object> get props => [];
}

class ProductLoadedState extends ProductDetailsState {
  final ProductDetailsModel productInfo;

  const ProductLoadedState({required this.productInfo});

  @override
  List<Object?> get props => [productInfo];
}

class ProductErrorState extends ProductDetailsState {
  final String errorMessage;

  const ProductErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
