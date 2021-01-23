import 'package:country_list_app/models/api_result.dart';
import 'package:country_list_app/models/country.dart';
import 'package:country_list_app/models/country_response.dart';
import 'package:country_list_app/services/dio_service.dart';
import 'package:country_list_app/services/exception_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountryRepository {
  DioService dioClient;
  ExceptionService exceptionService;
  final String _baseUrl = "https://api.first.org/";

  static final CountryRepository _singleton = CountryRepository._internal();

  factory CountryRepository() {
    return _singleton;
  }

  CountryRepository._internal() {
    dioClient = DioService(_baseUrl);
    exceptionService = ExceptionService();
  }

  Future<ApiResult<CountryResponse>> fetchCountries() async {
    try {
      final params = {
        "offset": 0,
        "limit": 100,
      };
      final response =
          await dioClient.get("data/v1/countries", queryParameters: params);
      final CountryResponse countryResponse =
          CountryResponse.fromJson(response as Map<String, dynamic>);
      checkAndSetValues(countryResponse);
      return ApiResult.success(data: countryResponse);
    } catch (e) {
      return ApiResult.failure(error: exceptionService.getDioException(e));
    }
  }

  Future<ApiResult<CountryResponse>> fetchMoreCountries() async {
    try {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      final offset = sharedPreferences.getInt('offset');
      final params = {
        "offset": offset,
        "limit": 100,
      };
      final response =
          await dioClient.get("data/v1/countries", queryParameters: params);
      final CountryResponse countryResponse =
          CountryResponse.fromJson(response as Map<String, dynamic>);
      checkAndSetValues(countryResponse);
      return ApiResult.success(data: countryResponse);
    } catch (e) {
      return ApiResult.failure(error: exceptionService.getDioException(e));
    }
  }

  Future<void> checkAndSetValues(
    CountryResponse countryResponse,
  ) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final newOffset = (countryResponse.offset + 1) + countryResponse.limit;

    sharedPreferences.setInt(
        "offset",
        newOffset >= countryResponse.total
            ? countryResponse.total + 1
            : newOffset);
  }
}
