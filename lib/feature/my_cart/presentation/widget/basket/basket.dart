import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/common/colors.dart';
import 'package:ecommerce/common/generated/l10n.dart';
import 'package:ecommerce/common/path_to_icons.dart';
import 'package:ecommerce/common/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneBasket extends StatelessWidget {
  const PhoneBasket({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Spacer(),
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  title,
                  style: MyAppTextStyle.title26(Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                price,
                style: MyAppTextStyle.title26(MyAppColors.ellipse2),
              ),
            ],
          ),
          const Expanded(child: Counter()),
        ],
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int num = 1;

  void plus() {
    setState(() {
      num++;
    });
  }

  void minus() {
    if (num > 1) {
      setState(() {
        num--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 80,
          width: 30,
          decoration: BoxDecoration(
            color: const Color(0xFF282843),
            borderRadius: BorderRadius.circular(26),
          ),
          child: Column(
            children: [
              Expanded(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    minus();
                  },
                  icon: SvgPicture.asset(MyAppIcons.minus),
                ),
              ),
              Expanded(
                  child: Text(
                '$num',
                style: MyAppTextStyle.title26(Colors.white),
              )),
              Expanded(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    plus();
                  },
                  icon: SvgPicture.asset(MyAppIcons.plus),
                ),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(MyAppIcons.basket1)),
      ],
    );
  }
}

class BasketBottom extends StatelessWidget {
  final int total;
  final String delivery;

  const BasketBottom({Key? key, required this.total, required this.delivery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 1,
          color: Colors.white24,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).Total,
                    style: MyAppTextStyle.title1(Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    S.of(context).Delivery,
                    style: MyAppTextStyle.title1(Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$$total us',
                    style: MyAppTextStyle.title3(Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    delivery,
                    style: MyAppTextStyle.title3(Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: 1,
          color: Colors.white24,
        ),
        const SizedBox(
          height: 27,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 44, right: 44),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                S.of(context).Checkout,
                style: MyAppTextStyle.title33(Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: MyAppColors.ellipse2,
                minimumSize: const Size(double.infinity, 54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
