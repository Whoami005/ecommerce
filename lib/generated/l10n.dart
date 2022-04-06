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
