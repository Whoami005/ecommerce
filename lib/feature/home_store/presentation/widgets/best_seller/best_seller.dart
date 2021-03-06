import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/common/colors.dart';
import 'package:ecommerce/common/text_style.dart';
import 'package:flutter/material.dart';

class BestSellerInfo extends StatelessWidget {
  final String imageUrl;
  final bool isFavorites;
  final String title;
  final int priceWithoutDiscount;
  final int discountPrice;

  const BestSellerInfo(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.priceWithoutDiscount,
      required this.discountPrice,
      required this.isFavorites})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CachedNetworkImage(
                      imageUrl: imageUrl,
                      height: 168,
                      width: 187,
                      fit: BoxFit.scaleDown,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: const CircleBorder(),
                            minimumSize: const Size(25, 25)),
                        child: isFavorites == true
                            ? const Icon(
                                Icons.favorite,
                                color: MyAppColors.ellipse2,
                                size: 15,
                              )
                            : const Icon(Icons.favorite_border))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$ $discountPrice',
                          style: MyAppTextStyle.title3(Colors.black),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          '\$ $priceWithoutDiscount',
                          style: MyAppTextStyle.title23,
                        ),
                      ],
                    ),
                    Text(
                      title,
                      style: MyAppTextStyle.title12(Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/home/productDetails');
              },
              borderRadius: BorderRadius.circular(8.0),
            ),
          )
        ],
      ),
    );
  }
}
