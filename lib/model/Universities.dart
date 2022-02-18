/// state-province : null
/// country : "United States"
/// name : "Marywood University"
/// alpha_two_code : "US"
/// web_pages : ["http://www.marywood.edu"]
/// domains : ["marywood.edu"]

class Universities {
  Universities({
      dynamic stateprovince, 
      String? country, 
      String? name, 
      String? alphaTwoCode, 
      List<String>? webPages, 
      List<String>? domains,}){
    _stateprovince = stateprovince;
    _country = country;
    _name = name;
    _alphaTwoCode = alphaTwoCode;
    _webPages = webPages;
    _domains = domains;
}

  Universities.fromJson(dynamic json) {
    _stateprovince = json['state-province'];
    _country = json['country'];
    _name = json['name'];
    _alphaTwoCode = json['alpha_two_code'];
    _webPages = json['web_pages'] != null ? json['web_pages'].cast<String>() : [];
    _domains = json['domains'] != null ? json['domains'].cast<String>() : [];
  }
  dynamic _stateprovince;
  String? _country;
  String? _name;
  String? _alphaTwoCode;
  List<String>? _webPages;
  List<String>? _domains;

  dynamic get stateprovince => _stateprovince;
  String? get country => _country;
  String? get name => _name;
  String? get alphaTwoCode => _alphaTwoCode;
  List<String>? get webPages => _webPages;
  List<String>? get domains => _domains;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['state-province'] = _stateprovince;
    map['country'] = _country;
    map['name'] = _name;
    map['alpha_two_code'] = _alphaTwoCode;
    map['web_pages'] = _webPages;
    map['domains'] = _domains;
    return map;
  }

}