import 'package:country_list_app/models/country.dart';

class CountryResponse {
  String status;
  int statusCode;
  String version;
  int total;
  int limit;
  int offset;
  String access;
  bool hasReachedMaxLimit;
  List<Country> data;

  CountryResponse(
      {this.status,
      this.statusCode,
      this.version,
      this.total,
      this.limit,
      this.offset,
      this.access,
      this.data});

  CountryResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'] as String;
    statusCode = json['status-code'] as int;
    version = json['version'] as String;
    total = json['total'] as int;
    limit = json['limit'] as int;
    offset = json['offset'] as int;
    access = json['access'] as String;
    if (json['data'] != null) {
      final dataJson = json['data'] as Map<String, dynamic>;
      final List<Country> countries = [];
      if (dataJson. isNotEmpty) {
        dataJson.forEach((k, v) {
          countries.add(Country.fromJson(k, v as Map<String, dynamic>));
        });
      }
      data = countries;
    }
    final newOffset = (offset + 1) + limit;
    hasReachedMaxLimit = newOffset >= total;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = status;
    data['status-code'] = statusCode;
    data['version'] = version;
    data['total'] = total;
    data['limit'] = limit;
    data['offset'] = offset;
    data['access'] = access;
    if (this.data != null) {
      data['data'] = Map.fromEntries(
          this.data.map((value) => MapEntry(value.code, value.toJson())));
    }
    return data;
  }
}
