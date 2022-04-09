import 'package:ecommerce/common/colors.dart';
import 'package:ecommerce/common/path_to_icons.dart';
import 'package:ecommerce/common/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const SizedBox(
            width: 42,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: MyAppColors.ellipse3,
                padding: const EdgeInsets.all(10),
                minimumSize: const Size(15, 15)),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
          const Spacer(),
          Text(
            'Product Details',
            style: MyAppTextStyle.title24(Colors.black),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/basket');
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: MyAppColors.ellipse2,
                padding: const EdgeInsets.all(10),
                minimumSize: const Size(15, 15)),
            child: SvgPicture.asset(MyAppIcons.basket),
          ),
          const SizedBox(
            width: 35,
          ),
        ],
      ),
    );
  }
}
