import 'package:ecommerce/feature/product_details/presentation/bloc/product_details_bloc.dart';
import 'package:ecommerce/feature/product_details/presentation/widgets/my_app_bar/my_app_bar.dart';
import 'package:ecommerce/feature/product_details/presentation/widgets/product_image/product_Image.dart';
import 'package:ecommerce/feature/product_details/presentation/widgets/product_shop/product_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: (context, state) {
      if (state is ProductInitialState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is ProductLoadedState) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15),
                const MyAppBar(),
                const ProductImage(),
                const SizedBox(height: 15),
                ProductShopBarInfo(
                  title: state.productInfo.title,
                  isFavorites: state.productInfo.isFavorites,
                  rating: state.productInfo.rating,
                  cpu: state.productInfo.cpu,
                  sd: state.productInfo.sd,
                  ssd: state.productInfo.ssd,
                  camera: state.productInfo.camera,
                ),
              ],
            ),
          ),
        );
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
