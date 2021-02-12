part of openapi.api;

class TemperatureStreamAllOf {
  /* The sequence of temperature values for this stream, in celsius degrees */
  List<int> data = [];
  TemperatureStreamAllOf();

  @override
  String toString() {
    return 'TemperatureStreamAllOf[data=$data, ]';
  }

  TemperatureStreamAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      (json['data'] as List).cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<TemperatureStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<TemperatureStreamAllOf>() : json.map((value) => TemperatureStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, TemperatureStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TemperatureStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TemperatureStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TemperatureStreamAllOf-objects as value to a dart map
  static Map<String, List<TemperatureStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TemperatureStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TemperatureStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

