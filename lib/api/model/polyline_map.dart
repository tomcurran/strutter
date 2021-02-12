part of openapi.api;

class PolylineMap {
  /* The identifier of the map */
  String id = null;
  /* The polyline of the map, only returned on detailed representation of an object */
  String polyline = null;
  /* The summary polyline of the map */
  String summaryPolyline = null;
  PolylineMap();

  @override
  String toString() {
    return 'PolylineMap[id=$id, polyline=$polyline, summaryPolyline=$summaryPolyline, ]';
  }

  PolylineMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    polyline = json['polyline'];
    summaryPolyline = json['summary_polyline'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (polyline != null)
      json['polyline'] = polyline;
    if (summaryPolyline != null)
      json['summary_polyline'] = summaryPolyline;
    return json;
  }

  static List<PolylineMap> listFromJson(List<dynamic> json) {
    return json == null ? List<PolylineMap>() : json.map((value) => PolylineMap.fromJson(value)).toList();
  }

  static Map<String, PolylineMap> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PolylineMap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PolylineMap.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PolylineMap-objects as value to a dart map
  static Map<String, List<PolylineMap>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PolylineMap>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PolylineMap.listFromJson(value);
       });
     }
     return map;
  }
}

