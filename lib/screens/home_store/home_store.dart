import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/screens/home_store/bloc/home_bloc.dart';
import 'package:ecommerce/screens/home_store/widgets/best_seller/best_seller.dart';
import 'package:ecommerce/screens/home_store/widgets/geolocation/geolocation.dart';
import 'package:ecommerce/screens/home_store/widgets/hot_sales/hot_sales.dart';
import 'package:ecommerce/screens/home_store/widgets/search/search.dart';
import 'package:ecommerce/screens/home_store/widgets/select_category/select_category.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeStore extends StatelessWidget {
  const HomeStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state is HomeInitialState) {
        return const Center(child: CircularProgressIndicator());
      }
      if (state is HomeLoadedState) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const MyGeolocation(),
                    const Title(
                        nameTitle: 'Select Category', nameButton: 'view all'),
                    const SelectCategory(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Search(),
                    const Title(nameTitle: 'Hot sales', nameButton: 'see more'),
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
                    const Title(
                        nameTitle: 'Best seller', nameButton: 'see more'),
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
                    )
                    // const BestSeller(),
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
