import 'package:bloc/bloc.dart';
import 'package:country_list_app/bloc/favourites/favourites_state.dart';
import 'package:country_list_app/models/country.dart';
import 'package:country_list_app/models/firestore_result.dart';
import 'package:country_list_app/repositories/favourite_country_repository.dart';
import 'package:flutter/foundation.dart';

class FavouritesCubit extends Cubit<FavouritesState> {
  final FavouriteCountryRepository favouriteCountryRepository;

  FavouritesCubit({@required this.favouriteCountryRepository})
      : assert(favouriteCountryRepository != null),
        super(const Idle());

  Future<void> loadFavourites() async {
    emit(const FavouritesState.loading());
    final FireStoreResult<List<Country>> apiResult =
        await favouriteCountryRepository.fetchFavouriteCountryList();
    apiResult.when(success: (List<Country> data) {
      emit(FavouritesState.data(data: data));
    }, failure: (error) {
      emit(FavouritesState.error(error: error.toString()));
    });
  }
}
