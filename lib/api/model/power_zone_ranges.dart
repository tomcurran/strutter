part of openapi.api;

class PowerZoneRanges {
  
  List<ZoneRange> zones = [];
  PowerZoneRanges();

  @override
  String toString() {
    return 'PowerZoneRanges[zones=$zones, ]';
  }

  PowerZoneRanges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    zones = (json['zones'] == null) ?
      null :
      ZoneRange.listFromJson(json['zones']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (zones != null)
      json['zones'] = zones;
    return json;
  }

  static List<PowerZoneRanges> listFromJson(List<dynamic> json) {
    return json == null ? List<PowerZoneRanges>() : json.map((value) => PowerZoneRanges.fromJson(value)).toList();
  }

  static Map<String, PowerZoneRanges> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PowerZoneRanges>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PowerZoneRanges.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PowerZoneRanges-objects as value to a dart map
  static Map<String, List<PowerZoneRanges>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PowerZoneRanges>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PowerZoneRanges.listFromJson(value);
       });
     }
     return map;
  }
}

