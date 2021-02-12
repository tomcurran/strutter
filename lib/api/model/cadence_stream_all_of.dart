part of openapi.api;

class CadenceStreamAllOf {
  /* The sequence of cadence values for this stream, in rotations per minute */
  List<int> data = [];
  CadenceStreamAllOf();

  @override
  String toString() {
    return 'CadenceStreamAllOf[data=$data, ]';
  }

  CadenceStreamAllOf.fromJson(Map<String, dynamic> json) {
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

  static List<CadenceStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<CadenceStreamAllOf>() : json.map((value) => CadenceStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, CadenceStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CadenceStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CadenceStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CadenceStreamAllOf-objects as value to a dart map
  static Map<String, List<CadenceStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CadenceStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CadenceStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

