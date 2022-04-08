import 'package:ecommerce/feature/product_details/presentation/bloc/product_details_bloc.dart';
import 'package:ecommerce/theme/colors.dart';
import 'package:ecommerce/theme/path_to_icons.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductShopBarInfo extends StatelessWidget {
  final String title;
  final bool isFavorites;
  final double rating;
  final String cpu;
  final String camera;
  final String sd;
  final String ssd;

  final List<Widget> tabs = const [
    Tab(text: 'Shop'),
    Tab(text: 'Details'),
    Tab(text: 'Features'),
  ];

  const ProductShopBarInfo(
      {Key? key,
      required this.title,
      required this.isFavorites,
      required this.rating,
      required this.cpu,
      required this.camera,
      required this.sd,
      required this.ssd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 27, right: 30, top: 28, bottom: 20),
      height: 471,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: MyAppTextStyle.title25(MyAppColors.ellipse3),
              ),
              const Spacer(),
              if (isFavorites == true)
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: MyAppColors.ellipse3,
                        minimumSize: const Size(15, 15),
                        padding: const EdgeInsets.all(10)),
                    child: const Icon(
                      Icons.favorite_border,
                    ))
            ],
          ),
          RatingBar.builder(
              initialRating: rating,
              itemSize: 24,
              allowHalfRating: true,
              itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
              onRatingUpdate: (rating) {}),
          const SizedBox(
            height: 15,
          ),
          DefaultTabController(
            length: 3,
            child: Row(
              children: [
                Expanded(
                    child: TabBar(
                        labelStyle:
                            MyAppTextStyle.title33(MyAppColors.ellipse3),
                        labelColor: MyAppColors.ellipse3,
                        unselectedLabelStyle:
                            MyAppTextStyle.title13(Colors.grey),
                        unselectedLabelColor: Colors.grey,
                        indicator: const UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: MyAppColors.ellipse2, width: 3)),
                        tabs: tabs)),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    MyAppIcons.cpu,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    cpu,
                    style: MyAppTextStyle.title1(Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  SvgPicture.asset(
                    MyAppIcons.camera,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    camera,
                    style: MyAppTextStyle.title1(Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  SvgPicture.asset(
                    MyAppIcons.memory,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    sd,
                    style: MyAppTextStyle.title1(Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  SvgPicture.asset(
                    MyAppIcons.sdCard,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ssd,
                    style: MyAppTextStyle.title1(Colors.grey),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Select color and capacity',
            style: MyAppTextStyle.title2(MyAppColors.ellipse3),
          ),
          const SizedBox(
            height: 10,
          ),
          const SelectColorCapacity(),
        ],
      ),
    );
  }
}

class SelectColorCapacity extends StatefulWidget {
  const SelectColorCapacity({Key? key}) : super(key: key);

  @override
  State<SelectColorCapacity> createState() => _SelectColorCapacityState();
}

class _SelectColorCapacityState extends State<SelectColorCapacity> {
  int selectColor = 0;
  int sdMemory = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: (context, state) {
      if (state is ProductLoadedState) {
        return Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: FloatingActionButton(
                      heroTag: 'one',
                      backgroundColor: colorFromApi(state.productInfo.color[0]),
                      onPressed: () {
                        setState(() {
                          selectColor = 0;
                        });
                      },
                      child: selectColor == 0
                          ? const Icon(Icons.check_outlined)
                          : const SizedBox()),
                ),
                const SizedBox(
                  width: 18,
                ),
                SizedBox(
                  width: 40,
                  child: FloatingActionButton(
                      heroTag: 'two',
                      backgroundColor: colorFromApi(state.productInfo.color[1]),
                      onPressed: () {
                        setState(() {
                          selectColor = 1;
                        });
                      },
                      child: selectColor == 1
                          ? const Icon(Icons.check_outlined)
                          : const SizedBox()),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sdMemory = 0;
                    });
                  },
                  child: Text('${state.productInfo.capacity[0]} GB',
                      style: sdMemory == 0
                          ? MyAppTextStyle.title34(Colors.white)
                          : MyAppTextStyle.title34(Colors.grey)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary:
                          sdMemory == 0 ? MyAppColors.ellipse2 : Colors.white,
                      elevation: 0),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sdMemory = 1;
                    });
                  },
                  child: Text('${state.productInfo.capacity[1]} GB',
                      style: sdMemory == 1
                          ? MyAppTextStyle.title34(Colors.white)
                          : MyAppTextStyle.title34(Colors.grey)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary:
                        sdMemory == 1 ? MyAppColors.ellipse2 : Colors.white,
                    elevation: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/basket');
              },
              child: Row(
                children: [
                  // const SizedBox(width: 40,),
                  Expanded(
                      child: Text(
                    'Add to Cart     \$${state.productInfo.price}',
                    style: MyAppTextStyle.title33(Colors.white),
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: MyAppColors.ellipse2,
                  minimumSize: const Size(double.infinity, 54)),
            )
          ],
        );
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
