part of openapi.api;

class HeartRateZoneRanges {
  /* Whether the athlete has set their own custom heart rate zones */
  bool customZones = null;
  
  List<ZoneRange> zones = [];
  HeartRateZoneRanges();

  @override
  String toString() {
    return 'HeartRateZoneRanges[customZones=$customZones, zones=$zones, ]';
  }

  HeartRateZoneRanges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customZones = json['custom_zones'];
    zones = (json['zones'] == null) ?
      null :
      ZoneRange.listFromJson(json['zones']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (customZones != null)
      json['custom_zones'] = customZones;
    if (zones != null)
      json['zones'] = zones;
    return json;
  }

  static List<HeartRateZoneRanges> listFromJson(List<dynamic> json) {
    return json == null ? List<HeartRateZoneRanges>() : json.map((value) => HeartRateZoneRanges.fromJson(value)).toList();
  }

  static Map<String, HeartRateZoneRanges> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HeartRateZoneRanges>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HeartRateZoneRanges.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HeartRateZoneRanges-objects as value to a dart map
  static Map<String, List<HeartRateZoneRanges>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HeartRateZoneRanges>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HeartRateZoneRanges.listFromJson(value);
       });
     }
     return map;
  }
}

