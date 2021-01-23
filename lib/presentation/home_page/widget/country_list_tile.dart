import 'package:country_list_app/bloc/cubit/country_favourite_cubit.dart';
import 'package:country_list_app/models/country.dart';
import 'package:country_list_app/repositories/favourite_country_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryListTile extends StatelessWidget {
  const CountryListTile({
    Key key,
    @required this.favouriteCountryRepository,
    @required this.country,
  }) : super(key: key);

  final FavouriteCountryRepository favouriteCountryRepository;
  final Country country;

  @override
  Widget build(BuildContext context) {
    final cubit = MarkFavouriteCubit(
        favouriteCountryRepository: favouriteCountryRepository);
    return BlocProvider(
      create: (context) => cubit..markCountry(country.code),
      child: BlocBuilder<MarkFavouriteCubit, bool>(
        builder: (context, state) {
          return Card(
            child: ListTile(
              key: ValueKey<String>(country.code),
              title: Text(
                country.country,
              ),
              subtitle: Text(
                "code - ${country.code}  region - ${country.region}",
              ),
              onTap: state
                  ? () =>
                      favouriteCountryRepository.removeCountry(country, cubit)
                  : () => favouriteCountryRepository.addCountry(country, cubit),
              trailing: state
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_outline),
              selected: state,
            ),
          );
        },
      ),
    );
  }
}
