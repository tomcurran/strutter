part of openapi.api;

class ZoneRange {
  /* The minimum value in the range. */
  int min = null;
  /* The maximum value in the range. */
  int max = null;
  ZoneRange();

  @override
  String toString() {
    return 'ZoneRange[min=$min, max=$max, ]';
  }

  ZoneRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    min = json['min'];
    max = json['max'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (min != null)
      json['min'] = min;
    if (max != null)
      json['max'] = max;
    return json;
  }

  static List<ZoneRange> listFromJson(List<dynamic> json) {
    return json == null ? List<ZoneRange>() : json.map((value) => ZoneRange.fromJson(value)).toList();
  }

  static Map<String, ZoneRange> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ZoneRange>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ZoneRange.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ZoneRange-objects as value to a dart map
  static Map<String, List<ZoneRange>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ZoneRange>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ZoneRange.listFromJson(value);
       });
     }
     return map;
  }
}

