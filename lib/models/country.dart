class Country {
  String code;
  String country;
  String region;

  Country.fromJson(this.code, Map<String, dynamic> json) {
    country = json['country'] as String;
    region = json['region'] as String;
  }

  Country.fromDocument(Map<String, dynamic> doc) {
    country = doc['country'] as String;
    region = doc['region'] as String;
    code = doc['code'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['country'] = country;
    data['region'] = region;
    data['code'] = region;
    return data;
  }
}
