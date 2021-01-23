// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/splash_screen.dart';
import '../favourites_page/favourites_page.dart';
import '../home_page/home_page.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homePage = '/home-page';
  static const String favouritesPage = '/favourites-page';
  static const all = <String>{
    splashScreen,
    homePage,
    favouritesPage,
  };
}

class RouterCountry extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.favouritesPage, page: FavouritesPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomePage(),
        settings: data,
      );
    },
    FavouritesPage: (data) {
      final args = data.getArgs<FavouritesPageArguments>(
        orElse: () => FavouritesPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FavouritesPage(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterCountryExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushFavouritesPage({
    Key key,
  }) =>
      push<dynamic>(
        Routes.favouritesPage,
        arguments: FavouritesPageArguments(key: key),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// FavouritesPage arguments holder class
class FavouritesPageArguments {
  final Key key;
  FavouritesPageArguments({this.key});
}
