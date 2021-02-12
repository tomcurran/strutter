part of openapi.api;

class Zones {
  
  HeartRateZoneRanges heartRate = null;
  
  PowerZoneRanges power = null;
  Zones();

  @override
  String toString() {
    return 'Zones[heartRate=$heartRate, power=$power, ]';
  }

  Zones.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    heartRate = (json['heart_rate'] == null) ?
      null :
      HeartRateZoneRanges.fromJson(json['heart_rate']);
    power = (json['power'] == null) ?
      null :
      PowerZoneRanges.fromJson(json['power']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (heartRate != null)
      json['heart_rate'] = heartRate;
    if (power != null)
      json['power'] = power;
    return json;
  }

  static List<Zones> listFromJson(List<dynamic> json) {
    return json == null ? List<Zones>() : json.map((value) => Zones.fromJson(value)).toList();
  }

  static Map<String, Zones> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Zones>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Zones.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Zones-objects as value to a dart map
  static Map<String, List<Zones>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Zones>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Zones.listFromJson(value);
       });
     }
     return map;
  }
}

