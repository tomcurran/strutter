part of openapi.api;

class PowerStreamAllOf {
  /* The sequence of power values for this stream, in watts */
  List<int> data = [];
  PowerStreamAllOf();

  @override
  String toString() {
    return 'PowerStreamAllOf[data=$data, ]';
  }

  PowerStreamAllOf.fromJson(Map<String, dynamic> json) {
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

  static List<PowerStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<PowerStreamAllOf>() : json.map((value) => PowerStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, PowerStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PowerStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PowerStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PowerStreamAllOf-objects as value to a dart map
  static Map<String, List<PowerStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PowerStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PowerStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

