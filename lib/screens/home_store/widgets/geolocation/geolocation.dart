import 'package:ecommerce/screens/home_store/widgets/geolocation/widgets/filter_options.dart';
import 'package:ecommerce/theme/path_to_icons.dart';
import 'package:ecommerce/theme/text_style.dart';
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
      // mainAxisSize: MainAxisSize.min,
      children: [
        // Expanded(child: SizedBox(width: 1,)),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(MyAppIcons.geolocation)),
        const SizedBox(
          width: 3,
        ),
        Text(
          'Zihuatanejo, Gro',
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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,
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
