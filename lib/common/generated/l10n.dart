// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Select Category`
  String get TitleSelectCategoryName {
    return Intl.message(
      'Select Category',
      name: 'TitleSelectCategoryName',
      desc: '',
      args: [],
    );
  }

  /// `view all`
  String get TitleSelectCategoryButton {
    return Intl.message(
      'view all',
      name: 'TitleSelectCategoryButton',
      desc: '',
      args: [],
    );
  }

  /// `Hot sales`
  String get TitleHotSalesName {
    return Intl.message(
      'Hot sales',
      name: 'TitleHotSalesName',
      desc: '',
      args: [],
    );
  }

  /// `see more`
  String get TitleButton {
    return Intl.message(
      'see more',
      name: 'TitleButton',
      desc: '',
      args: [],
    );
  }

  /// `Best seller`
  String get TitleBestSellerName {
    return Intl.message(
      'Best seller',
      name: 'TitleBestSellerName',
      desc: '',
      args: [],
    );
  }

  /// `Zihuatanejo, Gro`
  String get Geolocation {
    return Intl.message(
      'Zihuatanejo, Gro',
      name: 'Geolocation',
      desc: '',
      args: [],
    );
  }

  /// `Phones`
  String get Phones {
    return Intl.message(
      'Phones',
      name: 'Phones',
      desc: '',
      args: [],
    );
  }

  /// `Computer`
  String get Computer {
    return Intl.message(
      'Computer',
      name: 'Computer',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get Health {
    return Intl.message(
      'Health',
      name: 'Health',
      desc: '',
      args: [],
    );
  }

  /// `Books`
  String get Books {
    return Intl.message(
      'Books',
      name: 'Books',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get Search {
    return Intl.message(
      'Search',
      name: 'Search',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get New {
    return Intl.message(
      'New',
      name: 'New',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now!`
  String get Buy {
    return Intl.message(
      'Buy Now!',
      name: 'Buy',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get Favorite {
    return Intl.message(
      'Favorite',
      name: 'Favorite',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Explorer`
  String get Explorer {
    return Intl.message(
      'Explorer',
      name: 'Explorer',
      desc: '',
      args: [],
    );
  }

  /// `Basket`
  String get Basket {
    return Intl.message(
      'Basket',
      name: 'Basket',
      desc: '',
      args: [],
    );
  }

  /// `Filter options`
  String get FilterOptions {
    return Intl.message(
      'Filter options',
      name: 'FilterOptions',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get Done {
    return Intl.message(
      'Done',
      name: 'Done',
      desc: '',
      args: [],
    );
  }

  /// `Brand,`
  String get Brand {
    return Intl.message(
      'Brand,',
      name: 'Brand',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price {
    return Intl.message(
      'Price',
      name: 'Price',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get Size {
    return Intl.message(
      'Size',
      name: 'Size',
      desc: '',
      args: [],
    );
  }

  /// `Samsung`
  String get Samsung {
    return Intl.message(
      'Samsung',
      name: 'Samsung',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get Apple {
    return Intl.message(
      'Apple',
      name: 'Apple',
      desc: '',
      args: [],
    );
  }

  /// `Huawei`
  String get Huawei {
    return Intl.message(
      'Huawei',
      name: 'Huawei',
      desc: '',
      args: [],
    );
  }

  /// `Motorolla`
  String get Motorolla {
    return Intl.message(
      'Motorolla',
      name: 'Motorolla',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get Total {
    return Intl.message(
      'Total',
      name: 'Total',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get Delivery {
    return Intl.message(
      'Delivery',
      name: 'Delivery',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get Checkout {
    return Intl.message(
      'Checkout',
      name: 'Checkout',
      desc: '',
      args: [],
    );
  }

  /// `Add address`
  String get AddAddress {
    return Intl.message(
      'Add address',
      name: 'AddAddress',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get MyCart {
    return Intl.message(
      'My Cart',
      name: 'MyCart',
      desc: '',
      args: [],
    );
  }

  /// `Product Details`
  String get ProductDetails {
    return Intl.message(
      'Product Details',
      name: 'ProductDetails',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get Shop {
    return Intl.message(
      'Shop',
      name: 'Shop',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get Details {
    return Intl.message(
      'Details',
      name: 'Details',
      desc: '',
      args: [],
    );
  }

  /// `Features`
  String get Features {
    return Intl.message(
      'Features',
      name: 'Features',
      desc: '',
      args: [],
    );
  }

  /// `Select color and capacity`
  String get SelectColorAndCapacity {
    return Intl.message(
      'Select color and capacity',
      name: 'SelectColorAndCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get AddtoCart {
    return Intl.message(
      'Add to Cart',
      name: 'AddtoCart',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
