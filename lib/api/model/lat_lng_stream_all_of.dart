part of openapi.api;

class LatLngStreamAllOf {
  /* The sequence of lat/long values for this stream */
  List<List> data = [];
  LatLngStreamAllOf();

  @override
  String toString() {
    return 'LatLngStreamAllOf[data=$data, ]';
  }

  LatLngStreamAllOf.fromJson(Map<String, dynamic> json) {
    // if (json == null) return;
    // data = (json['data'] == null) ?
    //   null :
    //   List.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<LatLngStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<LatLngStreamAllOf>() : json.map((value) => LatLngStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, LatLngStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LatLngStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LatLngStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LatLngStreamAllOf-objects as value to a dart map
  static Map<String, List<LatLngStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LatLngStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LatLngStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

