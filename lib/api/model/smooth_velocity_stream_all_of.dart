part of openapi.api;

class SmoothVelocityStreamAllOf {
  /* The sequence of velocity values for this stream, in meters per second */
  List<double> data = [];
  SmoothVelocityStreamAllOf();

  @override
  String toString() {
    return 'SmoothVelocityStreamAllOf[data=$data, ]';
  }

  SmoothVelocityStreamAllOf.fromJson(Map<String, dynamic> json) {
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

  static List<SmoothVelocityStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<SmoothVelocityStreamAllOf>() : json.map((value) => SmoothVelocityStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, SmoothVelocityStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SmoothVelocityStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SmoothVelocityStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SmoothVelocityStreamAllOf-objects as value to a dart map
  static Map<String, List<SmoothVelocityStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SmoothVelocityStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SmoothVelocityStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

