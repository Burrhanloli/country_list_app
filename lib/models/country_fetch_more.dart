import 'package:country_list_app/models/country.dart';
import 'package:flutter/foundation.dart';

class CountryFetchMore {
  final bool hasReachedMaxLimit;
  final List<Country> countries;

  CountryFetchMore(
      {@required this.hasReachedMaxLimit, @required this.countries})
      : assert(hasReachedMaxLimit != null),
        assert(countries != null);
}
