import 'package:ecommerce/screens/home_store/widgets/best_seller/best_seller.dart';
import 'package:ecommerce/screens/home_store/widgets/geolocation/geolocation.dart';
import 'package:ecommerce/screens/home_store/widgets/hot_sales/hot_sales.dart';
import 'package:ecommerce/screens/home_store/widgets/search/search.dart';
import 'package:ecommerce/screens/home_store/widgets/select_category/select_category.dart';
import 'package:ecommerce/theme/text_style.dart';
import 'package:flutter/material.dart';

class HomeStore extends StatelessWidget {
  const HomeStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: const [
                MyGeolocation(),
                Title(nameTitle: 'Select Category', nameButton: 'view all'),
                SelectCategory(),
                SizedBox(height: 20,),
                Search(),
                Title(nameTitle: 'Hot sales', nameButton: 'see more'),
                HotSales(),
                Title(nameTitle: 'Best seller', nameButton: 'see more'),
                BestSeller(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String nameTitle;
  final String nameButton;

  const Title({Key? key, required this.nameTitle, required this.nameButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          nameTitle,
          style: MyAppTextStyle.title31(Colors.black),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              nameButton,
              style: MyAppTextStyle.title1(Colors.orange),
            )),
      ],
    );
  }
}
