import 'package:ecommerce/theme/colors.dart';
import 'package:ecommerce/theme/path_to_icons.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartAppBar extends StatelessWidget {
  const MyCartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 42, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
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
                  'Add address',
                  style: MyAppTextStyle.title2(MyAppColors.ellipse3),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: MyAppColors.ellipse2,
                      padding: const EdgeInsets.all(11),
                      minimumSize: const Size(15, 15)),
                  child: SvgPicture.asset(
                    MyAppIcons.geolocation,
                    color: Colors.white,
                    height: 24,
                    width: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Text('My Cart', style: MyAppTextStyle.title35(MyAppColors.ellipse3), )
          ],
        ),
      ),
    );
  }
}
