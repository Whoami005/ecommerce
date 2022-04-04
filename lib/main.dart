import 'package:ecommerce/repositories/home_repository.dart';
import 'package:ecommerce/screens/home_store/bloc/home_bloc.dart';
import 'package:ecommerce/screens/home_store/home_store.dart';
import 'package:ecommerce/screens/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final homeRepository = HomeRepository();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (BuildContext context) =>  HomeBloc(homeRepository: homeRepository),
      child: MaterialApp(
        theme: myLightTheme,
        initialRoute: '/menu',

        routes: {
          '/': (context) => const HomeStore(),
          '/menu': (context) => const BottomNavigationMenu(),
        },
        ),
    );
  }
}

