import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/core/bloc/bloc_observer.dart';
import 'package:ecommerce/feature/home_store/presentation/bloc/home_bloc.dart';
import 'package:ecommerce/feature/home_store/presentation/screens/home_store.dart';
import 'package:ecommerce/feature/my_cart/presentation/bloc/my_cart_bloc.dart';
import 'package:ecommerce/feature/my_cart/presentation/screens/my_cart.dart';
import 'package:ecommerce/feature/product_details/presentation/bloc/product_details_bloc.dart';
import 'package:ecommerce/feature/product_details/presentation/screens/product_details.dart';
import 'package:ecommerce/feature/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'locator_service.dart' as dependencies_injections;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencies_injections.initializeDependencies();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: BlocsObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeStoreBloc>(
          create: (BuildContext context) =>
              injection<HomeStoreBloc>()..add(const HomeStoreLoadEvent()),
        ),
        BlocProvider<ProductDetailsBloc>(
            create: (BuildContext context) => injection<ProductDetailsBloc>()
              ..add(const ProductDetailsLoadEvent())),
        BlocProvider<MyCartBloc>(
          create: (BuildContext context) =>
              injection<MyCartBloc>()..add(const MyCartLoadEvent()),
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
