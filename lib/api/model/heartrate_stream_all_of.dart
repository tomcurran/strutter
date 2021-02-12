part of openapi.api;

class HeartrateStreamAllOf {
  /* The sequence of heart rate values for this stream, in beats per minute */
  List<int> data = [];
  HeartrateStreamAllOf();

  @override
  String toString() {
    return 'HeartrateStreamAllOf[data=$data, ]';
  }

  HeartrateStreamAllOf.fromJson(Map<String, dynamic> json) {
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

  static List<HeartrateStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<HeartrateStreamAllOf>() : json.map((value) => HeartrateStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, HeartrateStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HeartrateStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HeartrateStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HeartrateStreamAllOf-objects as value to a dart map
  static Map<String, List<HeartrateStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HeartrateStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HeartrateStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

