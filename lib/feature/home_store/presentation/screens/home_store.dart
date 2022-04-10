import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/text_style.dart';
import 'package:ecommerce/feature/home_store/presentation/bloc/home_bloc.dart';
import 'package:ecommerce/feature/home_store/presentation/widgets/best_seller/best_seller.dart';
import 'package:ecommerce/feature/home_store/presentation/widgets/geolocation/geolocation.dart';
import 'package:ecommerce/feature/home_store/presentation/widgets/hot_sales/hot_sales.dart';
import 'package:ecommerce/feature/home_store/presentation/widgets/search/search.dart';
import 'package:ecommerce/feature/home_store/presentation/widgets/select_category/select_category.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shimmer/shimmer.dart';

class HomeStore extends StatelessWidget {
  const HomeStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeStoreBloc, HomeStoreState>(
        builder: (context, state) {
      if (state is HomeStoreLoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );

        //   Center(
        //   child: Shimmer.fromColors(
        //       baseColor: Colors.red,
        //       highlightColor: Colors.yellow,
        //       child: const Text(
        //         'Shimmer',
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //           fontSize: 40.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       )),
        // );
      }
      if (state is HomeStoreLoadedState) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const MyGeolocation(),
                    Title(
                        nameTitle: S.of(context).TitleSelectCategoryName,
                        nameButton: S.of(context).TitleSelectCategoryButton),
                    const SelectCategory(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Search(),
                    Title(
                        nameTitle: S.of(context).TitleHotSalesName,
                        nameButton: S.of(context).TitleButton),
                    CarouselSlider.builder(
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return HomeSales(
                          imageUrl: state.homeInfo.homeStore[index].picture,
                          isBuy: state.homeInfo.homeStore[index].isBuy,
                          title: state.homeInfo.homeStore[index].title,
                          isNew: state.homeInfo.homeStore[index].isNew,
                          subtitle: state.homeInfo.homeStore[index].subtitle,
                        );
                      },
                      options: CarouselOptions(
                        height: 182,
                        viewportFraction: 1,
                        autoPlay: true,
                      ),
                      itemCount: state.homeInfo.homeStore.length,
                    ),
                    Title(
                        nameTitle: S.of(context).TitleBestSellerName,
                        nameButton: S.of(context).TitleButton),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8 / 1,
                      ),
                      itemCount: state.homeInfo.bestSeller.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return BestSellerInfo(
                          imageUrl: state.homeInfo.bestSeller[index].picture,
                          discountPrice:
                              state.homeInfo.bestSeller[index].discountPrice,
                          title: state.homeInfo.bestSeller[index].title,
                          priceWithoutDiscount: state
                              .homeInfo.bestSeller[index].priceWithoutDiscount,
                          isFavorites:
                              state.homeInfo.bestSeller[index].isFavorites,
                        );
                      },
                    ),
                  ],
                ),
              ),
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

class Title extends StatelessWidget {
  final String nameTitle;
  final String nameButton;

  const Title({Key? key, required this.nameTitle, required this.nameButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          nameTitle,
          style: MyAppTextStyle.title31(Colors.black),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              nameButton,
              style: MyAppTextStyle.title1(Colors.orange),
            )),
      ],
    );
  }
}
