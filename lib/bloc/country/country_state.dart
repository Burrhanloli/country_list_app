import 'package:country_list_app/models/country_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:country_list_app/models/network_exceptions.dart';

part 'country_state.freezed.dart';

@freezed
abstract class CountryState with _$CountryState {
  const factory CountryState.idle() = Idle;

  const factory CountryState.loading() = Loading;

  const factory CountryState.data({@required CountryResponse data}) = Data;

  const factory CountryState.error({@required NetworkExceptions error}) = Error;
}
