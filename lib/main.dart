import 'package:ecommerce/bloc/bloc_observer.dart';
import 'package:ecommerce/feature/home_store/presentation/bloc/home_bloc.dart';
import 'package:ecommerce/feature/home_store/presentation/screens/home_store.dart';
import 'package:ecommerce/feature/home_store/repositories/home_repository.dart';
import 'package:ecommerce/feature/my_cart/presentation/bloc/my_cart_bloc.dart';
import 'package:ecommerce/feature/my_cart/presentation/screens/my_cart.dart';
import 'package:ecommerce/feature/my_cart/repository/my_cart_repository.dart';
import 'package:ecommerce/feature/product_details/presentation/bloc/product_details_bloc.dart';
import 'package:ecommerce/feature/product_details/presentation/screens/product_details.dart';
import 'package:ecommerce/feature/product_details/repositories/product_details_repository.dart';
import 'package:ecommerce/feature/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(MyApp()),
    blocObserver: BlocsObserver(),
  );
}

class MyApp extends StatelessWidget {
  final homeRepository = HomeRepository();
  final productRepository = ProductDetailsRepository();
  final cartRepository = CartRepository();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) =>
              HomeBloc(homeRepository: homeRepository)
                ..add(const HomeLoadEvent()),
        ),
        BlocProvider<ProductDetailsBloc>(
            create: (BuildContext context) =>
                ProductDetailsBloc(productDetailsRepository: productRepository)
                  ..add(const ProductLoadEvent())),
        BlocProvider<MyCartBloc>(
          create: (BuildContext context) =>
              MyCartBloc(cartRepository: cartRepository)
                ..add(const MyCartLoadEvent()),
        ),
      ],
      child: MaterialApp(
        theme: myLightTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        initialRoute: '/',
        routes: {
          '/': (context) => const BottomNavigationMenu(),
          '/home': (context) => const HomeStore(),
          '/home/productDetails': (context) => const ProductDetails(),
          '/basket': (context) => const MyCart(),
        },
      ),
    );
  }
}
