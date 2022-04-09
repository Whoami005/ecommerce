import 'package:ecommerce/feature/home_store/presentation/widgets/geolocation/widgets/filter_options.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/common/path_to_icons.dart';
import 'package:ecommerce/common/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyGeolocation extends StatelessWidget {
  const MyGeolocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(MyAppIcons.geolocation)),
        const SizedBox(
          width: 3,
        ),
        Text(
          S.of(context).Geolocation,
          style: MyAppTextStyle.title2(Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            MyAppIcons.down,
            color: Colors.black45,
          ),
        ),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                context: context,
                builder: (BuildContext context) {
                  return const FilterOptions();
                });
          },
          icon: SvgPicture.asset(MyAppIcons.wateringCan),
        ),
        // const SizedBox(
        //   width: 27,
        // ),
      ],
    );
  }
}
