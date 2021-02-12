part of openapi.api;

class TimedZoneRange {
  /* The minimum value in the range. */
  int min = null;
  /* The maximum value in the range. */
  int max = null;
  /* The number of seconds spent in this zone */
  int time = null;
  TimedZoneRange();

  @override
  String toString() {
    return 'TimedZoneRange[min=$min, max=$max, time=$time, ]';
  }

  TimedZoneRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    min = json['min'];
    max = json['max'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (min != null)
      json['min'] = min;
    if (max != null)
      json['max'] = max;
    if (time != null)
      json['time'] = time;
    return json;
  }

  static List<TimedZoneRange> listFromJson(List<dynamic> json) {
    return json == null ? List<TimedZoneRange>() : json.map((value) => TimedZoneRange.fromJson(value)).toList();
  }

  static Map<String, TimedZoneRange> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimedZoneRange>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimedZoneRange.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimedZoneRange-objects as value to a dart map
  static Map<String, List<TimedZoneRange>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimedZoneRange>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimedZoneRange.listFromJson(value);
       });
     }
     return map;
  }
}

