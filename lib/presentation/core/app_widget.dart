import 'package:auto_route/auto_route.dart';
import 'package:country_list_app/bloc/country/country_cubit.dart';
import 'package:country_list_app/bloc/favourites/favourites_cubit.dart';
import 'package:country_list_app/bloc/network/network_bloc.dart';
import 'package:country_list_app/presentation/util/router.gr.dart';
import 'package:country_list_app/presentation/core/splash_screen.dart';
import 'package:country_list_app/presentation/util/theme.dart';
import 'package:country_list_app/bloc/network/network_event.dart';
import 'package:country_list_app/repositories/country_repository.dart';
import 'package:country_list_app/repositories/favourite_country_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NetworkBloc()
            ..add(
              const ListenConnection(),
            ),
        ),
        BlocProvider(
          create: (context) => CountryCubit(
            countryRepository: CountryRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => FavouritesCubit(
            favouriteCountryRepository: FavouriteCountryRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Countries',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator.builder<RouterCountry>(
          router: RouterCountry(),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
