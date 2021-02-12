part of openapi.api;

class TimedZoneRangeAllOf {
  /* The number of seconds spent in this zone */
  int time = null;
  TimedZoneRangeAllOf();

  @override
  String toString() {
    return 'TimedZoneRangeAllOf[time=$time, ]';
  }

  TimedZoneRangeAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (time != null)
      json['time'] = time;
    return json;
  }

  static List<TimedZoneRangeAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<TimedZoneRangeAllOf>() : json.map((value) => TimedZoneRangeAllOf.fromJson(value)).toList();
  }

  static Map<String, TimedZoneRangeAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimedZoneRangeAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimedZoneRangeAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimedZoneRangeAllOf-objects as value to a dart map
  static Map<String, List<TimedZoneRangeAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimedZoneRangeAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimedZoneRangeAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

