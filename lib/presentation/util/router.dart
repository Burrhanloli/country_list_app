import 'package:auto_route/auto_route_annotations.dart';
import 'package:country_list_app/presentation/favourites_page/favourites_page.dart';
import 'package:country_list_app/presentation/home_page/home_page.dart';
import 'package:country_list_app/presentation/core/splash_screen.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashScreen, initial: true),
      MaterialRoute(page: HomePage),
      MaterialRoute(page: FavouritesPage),
    ])
class $RouterCountry {}
