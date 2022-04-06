import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/theme/colors.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';

class HomeSales extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool? isNew;
  final bool isBuy;

  const HomeSales(
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
            width: double.infinity,
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
                  color: MyAppColors.ellipse2, shape: BoxShape.circle),
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
