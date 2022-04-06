import 'package:ecommerce/bloc/bloc_observer.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/screens/home_store/bloc/home_bloc.dart';
import 'package:ecommerce/screens/home_store/home_store.dart';
import 'package:ecommerce/screens/home_store/repositories/home_repository.dart';
import 'package:ecommerce/screens/product_details/bloc/product_details_bloc.dart';
import 'package:ecommerce/screens/product_details/product_details.dart';
import 'package:ecommerce/screens/product_details/repositories/product_details_repository.dart';
import 'package:ecommerce/screens/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
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
                  ..add(const ProductLoadEvent()))
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
        },
      ),
    );
  }
}
