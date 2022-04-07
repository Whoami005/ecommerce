import 'package:badges/badges.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/screens/home_store/home_store.dart';
import 'package:ecommerce/screens/my_cart/bloc/my_cart_bloc.dart';
import 'package:ecommerce/theme/path_to_icons.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({Key? key}) : super(key: key);

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  int _selectedTab = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeStore(),
    // const MyCart(),
    Center(child: Text(S().Favorite)),
    Center(child: Text(S().Favorite)),
    Center(child: Text(S().Settings)),
  ];

  void onSelectedTab(int index) {
    if (index != 1){
      setState(() {
        _selectedTab = index;
      });
    }else{
      Navigator.pushNamed(context, '/basket');
    }
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
                      Text(
                        S.of(context).Explorer,
                        style: MyAppTextStyle.title3(Colors.white),
                      )
                    ],
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Badge(
                    badgeContent: const BadgeContentWidget(),
                      child: SvgPicture.asset(MyAppIcons.basket)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(MyAppIcons.favorites), label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(MyAppIcons.profile), label: ''),
            ],
            currentIndex: _selectedTab,
            onTap: onSelectedTab,
          ),
        ),
      ),
    );
  }
}

class BadgeContentWidget extends StatelessWidget {
  const BadgeContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyCartBloc, MyCartState>(builder: (context, state) {
      if (state is MyCartLoadState){
        return Text('${state.cartInfo.basket.length}',);
      }
      return const Center(child: CircularProgressIndicator());
    });
  }
}
