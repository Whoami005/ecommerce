import 'package:ecommerce/common/colors.dart';
import 'package:ecommerce/common/generated/l10n.dart';
import 'package:ecommerce/common/path_to_icons.dart';
import 'package:ecommerce/common/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  int _selectedTab = 0;

  final List<dynamic> _selectCategory = [
    {'name': S().Phones, 'icon': MyAppIcons.phone},
    {'name': S().Computer, 'icon': MyAppIcons.computer},
    {'name': S().Health, 'icon': MyAppIcons.health},
    {'name': S().Books, 'icon': MyAppIcons.books},
    {'name': S().Phones, 'icon': MyAppIcons.phone},
    {'name': S().Computer, 'icon': MyAppIcons.computer},
    {'name': S().Health, 'icon': MyAppIcons.health},
    {'name': S().Books, 'icon': MyAppIcons.books},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  width: 85,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedTab = index;
                      });
                    },
                    child: SvgPicture.asset(
                      _selectCategory[index]['icon'],
                      color: _selectedTab == index ? Colors.white : Colors.grey,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: _selectedTab == index
                            ? MyAppColors.ellipse2
                            : Colors.white,
                        shape: const CircleBorder()),
                  ),
                ),
                Text(
                  _selectCategory[index]['name'],
                  style: MyAppTextStyle.title21(Colors.black),
                )
              ],
            );
          },
          itemCount: _selectCategory.length),
    );
  }
}
