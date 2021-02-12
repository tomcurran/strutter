part of openapi.api;

class AltitudeStreamAllOf {
  /* The sequence of altitude values for this stream, in meters */
  List<double> data = [];
  AltitudeStreamAllOf();

  @override
  String toString() {
    return 'AltitudeStreamAllOf[data=$data, ]';
  }

  AltitudeStreamAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      (json['data'] as List).cast<double>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<AltitudeStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<AltitudeStreamAllOf>() : json.map((value) => AltitudeStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, AltitudeStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AltitudeStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AltitudeStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AltitudeStreamAllOf-objects as value to a dart map
  static Map<String, List<AltitudeStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AltitudeStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AltitudeStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

