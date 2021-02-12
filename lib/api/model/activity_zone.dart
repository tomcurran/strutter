part of openapi.api;

class ActivityZone {
  
  int score = null;
  /* Stores the exclusive ranges representing zones and the time spent in each. */
  List<TimedZoneRange> distributionBuckets = [];
  
  String type = null;
  //enum typeEnum {  heartrate,  power,  };{
  
  bool sensorBased = null;
  
  int points = null;
  
  bool customZones = null;
  
  int max = null;
  ActivityZone();

  @override
  String toString() {
    return 'ActivityZone[score=$score, distributionBuckets=$distributionBuckets, type=$type, sensorBased=$sensorBased, points=$points, customZones=$customZones, max=$max, ]';
  }

  ActivityZone.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    score = json['score'];
    distributionBuckets = (json['distribution_buckets'] == null) ?
      null :
      TimedZoneRange.listFromJson(json['distribution_buckets']);
    type = json['type'];
    sensorBased = json['sensor_based'];
    points = json['points'];
    customZones = json['custom_zones'];
    max = json['max'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (score != null)
      json['score'] = score;
    if (distributionBuckets != null)
      json['distribution_buckets'] = distributionBuckets;
    if (type != null)
      json['type'] = type;
    if (sensorBased != null)
      json['sensor_based'] = sensorBased;
    if (points != null)
      json['points'] = points;
    if (customZones != null)
      json['custom_zones'] = customZones;
    if (max != null)
      json['max'] = max;
    return json;
  }

  static List<ActivityZone> listFromJson(List<dynamic> json) {
    return json == null ? List<ActivityZone>() : json.map((value) => ActivityZone.fromJson(value)).toList();
  }

  static Map<String, ActivityZone> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActivityZone>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ActivityZone.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActivityZone-objects as value to a dart map
  static Map<String, List<ActivityZone>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ActivityZone>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ActivityZone.listFromJson(value);
       });
     }
     return map;
  }
}

