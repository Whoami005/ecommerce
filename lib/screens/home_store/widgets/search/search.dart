import 'package:ecommerce/theme/colors.dart';
import 'package:ecommerce/theme/path_to_icons.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            height: 34,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  hintText: 'Search',
                  hintStyle: MyAppTextStyle.title11(Colors.grey),
                  prefixIcon: SvgPicture.asset(MyAppIcons.search, fit: BoxFit.scaleDown,)
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            primary: MyAppColors.ellipse2,
            shape: const CircleBorder(),
          ),
          child: SvgPicture.asset(MyAppIcons.qrcode),
        ),
      ],
    );
  }
}
