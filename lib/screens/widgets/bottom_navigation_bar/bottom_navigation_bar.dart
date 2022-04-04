import 'package:ecommerce/screens/home_store/home_store.dart';
import 'package:ecommerce/theme/path_to_icons.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({Key? key}) : super(key: key);

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeStore(),
    Center(child: Text('Favorite')),
    Center(child: Text('Favorite')),
    Center(child: Text('Settings')),
  ];


  void onSelectedTab(int index){
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: _widgetOptions,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          // height: 69,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(MyAppIcons.circle),
                      const SizedBox(
                        width: 7,
                      ),
                      Text('Explorer', style: MyAppTextStyle.title3(Colors.white),)
                    ],
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(MyAppIcons.basket),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(MyAppIcons.favorites),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(MyAppIcons.profile),
                  label: ''),
            ],
            currentIndex: _selectedTab,
            onTap: onSelectedTab,
          ),
        ),
      ),
    );
  }
}
