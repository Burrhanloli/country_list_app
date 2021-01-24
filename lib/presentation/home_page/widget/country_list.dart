import 'package:country_list_app/bloc/country/country_cubit.dart';
import 'package:country_list_app/bloc/country/country_state.dart';
import 'package:country_list_app/models/country.dart';
import 'package:country_list_app/presentation/home_page/widget/country_list_tile.dart';
import 'package:country_list_app/repositories/favourite_country_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryList extends StatefulWidget {
  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  final FavouriteCountryRepository favouriteCountryRepository =
      FavouriteCountryRepository();
  final ScrollController _scrollController = ScrollController();
  final List<Country> _countries = [];
  bool hasReachedMaxLimit = false;

  @override
  void initState() {
    super.initState();
    context.read<CountryCubit>().loadCountries();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (!hasReachedMaxLimit) {
      if (maxScroll == currentScroll) {
        context.read<CountryCubit>().loadMoreCountries().then(
              (value) => setState(() {
                _countries.addAll(value.countries);
                hasReachedMaxLimit = value.hasReachedMaxLimit;
              }),
            );
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      selectedColor: Theme.of(context).primaryColor,
      selectedTileColor: Theme.of(context).primaryColor.withOpacity(0.1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: BlocConsumer<CountryCubit, CountryState>(
        listener: (context, state) {
          state.maybeWhen(
              data: (data) => _countries.addAll(data.data), orElse: () => {});
        },
        builder: (context, state) {
          final child = state.when(
            idle: () => Container(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            data: (data) {
              final int itemCount = _countries.length + 1;
              return ListView.builder(
                itemCount: itemCount,
                controller: _scrollController,
                itemBuilder: (context, index) {
                  if (index == _countries.length && hasReachedMaxLimit) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("End of list",
                            style: Theme.of(context).textTheme.caption),
                      ),
                    );
                  } else if (index == _countries.length &&
                      !hasReachedMaxLimit) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else {
                    final country = _countries[index];
                    return CountryListTile(
                      favouriteCountryRepository: favouriteCountryRepository,
                      country: country,
                    );
                  }
                },
              );
            },
            error: (error) => Center(
              child: Text(
                "Something went wrong",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).errorColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
          return AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: child,
          );
        },
      ),
    );
  }
}
