part of openapi.api;

class DistanceStreamAllOf {
  /* The sequence of distance values for this stream, in meters */
  List<double> data = [];
  DistanceStreamAllOf();

  @override
  String toString() {
    return 'DistanceStreamAllOf[data=$data, ]';
  }

  DistanceStreamAllOf.fromJson(Map<String, dynamic> json) {
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

  static List<DistanceStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<DistanceStreamAllOf>() : json.map((value) => DistanceStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, DistanceStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DistanceStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DistanceStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DistanceStreamAllOf-objects as value to a dart map
  static Map<String, List<DistanceStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DistanceStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DistanceStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

