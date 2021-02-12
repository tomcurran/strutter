part of openapi.api;

class TimeStreamAllOf {
  /* The sequence of time values for this stream, in seconds */
  List<int> data = [];
  TimeStreamAllOf();

  @override
  String toString() {
    return 'TimeStreamAllOf[data=$data, ]';
  }

  TimeStreamAllOf.fromJson(Map<String, dynamic> json) {
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

  static List<TimeStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeStreamAllOf>() : json.map((value) => TimeStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, TimeStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeStreamAllOf-objects as value to a dart map
  static Map<String, List<TimeStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimeStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimeStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

