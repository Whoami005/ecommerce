import 'package:ecommerce/feature/my_cart/presentation/bloc/my_cart_bloc.dart';
import 'package:ecommerce/feature/my_cart/presentation/widget/basket/basket.dart';
import 'package:ecommerce/feature/my_cart/presentation/widget/my_appBar/My_appBar.dart';
import 'package:ecommerce/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyCartBloc, MyCartState>(builder: (context, state) {
      if (state is MyCartInitialState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is MyCartLoadState) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const MyCartAppBar(),
                  const SizedBox(
                    height: 49,
                  ),
                  Container(
                    height: 690,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: MyAppColors.ellipse3,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        PhoneBasket(
                            image: state.cartInfo.basket[0].images,
                            title: state.cartInfo.basket[0].title,
                            price: '\$${state.cartInfo.basket[0].price}'),
                        const SizedBox(
                          height: 45,
                        ),
                        PhoneBasket(
                            image: state.cartInfo.basket[1].images,
                            title: state.cartInfo.basket[1].title,
                            price: '\$${state.cartInfo.basket[1].price}'),
                        // const SizedBox(height: 40,),
                        const Spacer(),
                        Expanded(
                          child: BasketBottom(
                            total: state.cartInfo.total,
                            delivery: state.cartInfo.delivery,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
