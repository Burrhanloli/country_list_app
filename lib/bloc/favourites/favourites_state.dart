import 'package:country_list_app/models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_state.freezed.dart';

@freezed
abstract class FavouritesState with _$FavouritesState {
  const factory FavouritesState.idle() = Idle;

  const factory FavouritesState.loading() = Loading;

  const factory FavouritesState.data({@required List<Country> data}) = Data;

  const factory FavouritesState.error({@required String error}) = Error;
}
