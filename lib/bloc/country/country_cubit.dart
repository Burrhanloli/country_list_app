import 'package:bloc/bloc.dart';
import 'package:country_list_app/bloc/country/country_state.dart';
import 'package:country_list_app/models/api_result.dart';
import 'package:country_list_app/models/country.dart';
import 'package:country_list_app/models/country_fetch_more.dart';
import 'package:country_list_app/models/country_response.dart';
import 'package:country_list_app/models/network_exceptions.dart';
import 'package:country_list_app/repositories/country_repository.dart';
import 'package:flutter/foundation.dart';

class CountryCubit extends Cubit<CountryState> {
  final CountryRepository countryRepository;

  CountryCubit({@required this.countryRepository})
      : assert(countryRepository != null),
        super(const Idle(),);

  Future<void> loadCountries() async {
    emit(const CountryState.loading());
    final ApiResult<CountryResponse> apiResult =
        await countryRepository.fetchCountries();
    apiResult.when(success: (CountryResponse data) {
      emit(CountryState.data(data: data));
    }, failure: (NetworkExceptions error) {
      emit(CountryState.error(error: error));
    });
  }

  Future<CountryFetchMore> loadMoreCountries({bool hasReachedMaxLimit}) async {
    final ApiResult<CountryResponse> apiResult =
        await countryRepository.fetchMoreCountries();
    final result = apiResult.maybeWhen(
        success: (CountryResponse data) {
          return CountryFetchMore(
              hasReachedMaxLimit: data.hasReachedMaxLimit,
              countries: data.data);
        },
        orElse: () => CountryFetchMore(
            hasReachedMaxLimit: false, countries: <Country>[]));
    return result;
  }
}
