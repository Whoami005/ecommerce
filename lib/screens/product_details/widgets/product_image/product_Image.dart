import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/screens/product_details/bloc/product_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key}) : super(key: key);

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
        return CarouselSlider.builder(
            itemCount: state.productInfo.images.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: state.productInfo.images[index],
                ),
              );
            },
            options: CarouselOptions(
              viewportFraction: 0.7,
              height: 250,
            ));
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
