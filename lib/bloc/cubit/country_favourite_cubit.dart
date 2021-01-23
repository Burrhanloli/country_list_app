import 'package:bloc/bloc.dart';
import 'package:country_list_app/repositories/favourite_country_repository.dart';
import 'package:flutter/foundation.dart';

class MarkFavouriteCubit extends Cubit<bool> {
  final FavouriteCountryRepository favouriteCountryRepository;
  MarkFavouriteCubit({@required this.favouriteCountryRepository})
      : super(false);

  Future<void> markCountry(String docId) async {
    final isFavourite =
        await favouriteCountryRepository.checkIsFavourite(docId);
    emit(isFavourite);
  }
  void emitTrue(){
    emit(true);
  }

  void emitfalse(){
    emit(false);
  }
}
