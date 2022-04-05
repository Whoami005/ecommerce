import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/screens/home_store/bloc/home_bloc.dart';
import 'package:ecommerce/theme/colors.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotSales extends StatelessWidget {
  const HotSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
      final HomeBloc Bloc = BlocProvider.of<HomeBloc>(context);
      if (state is HomeInitialState) {
        return
        //   const Center(
        //     child: CircularProgressIndicator()
        // );


          Center(
          child: Column(children: [
            const Icon(Icons.group),
            IconButton(
              onPressed: () {
                Bloc.add(const HomeLoadEvent());
              },
              icon: const Icon(Icons.abc),
            )
          ]),
        );
      }
      if (state is HomeLoadedState) {
        return CarouselSlider.builder(
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return HomeStore(
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
          ),
          itemCount: state.homeInfo.homeStore.length,
        );
      }
      return const Center(child: Icon(Icons.http));
    });
  }
}

class HomeStore extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool? isNew;
  final bool isBuy;

  const HomeStore(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.isNew,
      required this.isBuy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            width: 378,
            height: 182,
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
        ),
        if (isNew == true)
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 27,
              width: 27,
              alignment: Alignment.center,
              child: Text(
                'New',
                style: MyAppTextStyle.title32(Colors.white),
              ),
              decoration: const BoxDecoration(
                color: MyAppColors.ellipse2, shape: BoxShape.circle
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: MyAppTextStyle.title31(Colors.white),
              ),
              Text(
                subtitle,
                style: MyAppTextStyle.title11(Colors.white),
              ),
              if (isBuy == true)
                const SizedBox(
                  height: 10,
                ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Buy Now!',
                  style: MyAppTextStyle.title32(Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size(15, 25),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
