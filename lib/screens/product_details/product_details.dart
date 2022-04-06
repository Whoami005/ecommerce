import 'package:ecommerce/screens/product_details/widgets/my_app_bar/my_app_bar.dart';
import 'package:ecommerce/screens/product_details/widgets/product_image/product_Image.dart';
import 'package:ecommerce/screens/product_details/widgets/product_shop/product_shop.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
          SizedBox(height: 15,),
          MyAppBar(),
          ProductImage(),
          SizedBox(height: 15,),
          ProductShop(),
        ],),
      ),
    );
  }
}
