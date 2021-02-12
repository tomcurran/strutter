part of openapi.api;

class DetailedActivityAllOf {
  /* The description of the activity */
  String description = null;
  
  PhotosSummary photos = null;
  
  SummaryGear gear = null;
  /* The number of kilocalories consumed during this activity */
  double calories = null;
  
  List<DetailedSegmentEffort> segmentEfforts = [];
  /* The name of the device used to record the activity */
  String deviceName = null;
  /* The token used to embed a Strava activity */
  String embedToken = null;
  /* The splits of this activity in metric units (for runs) */
  List<Split> splitsMetric = [];
  /* The splits of this activity in imperial units (for runs) */
  List<Split> splitsStandard = [];
  
  List<Lap> laps = [];
  
  List<DetailedSegmentEffort> bestEfforts = [];
  DetailedActivityAllOf();

  @override
  String toString() {
    return 'DetailedActivityAllOf[description=$description, photos=$photos, gear=$gear, calories=$calories, segmentEfforts=$segmentEfforts, deviceName=$deviceName, embedToken=$embedToken, splitsMetric=$splitsMetric, splitsStandard=$splitsStandard, laps=$laps, bestEfforts=$bestEfforts, ]';
  }

  DetailedActivityAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    photos = (json['photos'] == null) ?
      null :
      PhotosSummary.fromJson(json['photos']);
    gear = (json['gear'] == null) ?
      null :
      SummaryGear.fromJson(json['gear']);
    calories = json['calories'];
    segmentEfforts = (json['segment_efforts'] == null) ?
      null :
      DetailedSegmentEffort.listFromJson(json['segment_efforts']);
    deviceName = json['device_name'];
    embedToken = json['embed_token'];
    splitsMetric = (json['splits_metric'] == null) ?
      null :
      Split.listFromJson(json['splits_metric']);
    splitsStandard = (json['splits_standard'] == null) ?
      null :
      Split.listFromJson(json['splits_standard']);
    laps = (json['laps'] == null) ?
      null :
      Lap.listFromJson(json['laps']);
    bestEfforts = (json['best_efforts'] == null) ?
      null :
      DetailedSegmentEffort.listFromJson(json['best_efforts']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (photos != null)
      json['photos'] = photos;
    if (gear != null)
      json['gear'] = gear;
    if (calories != null)
      json['calories'] = calories;
    if (segmentEfforts != null)
      json['segment_efforts'] = segmentEfforts;
    if (deviceName != null)
      json['device_name'] = deviceName;
    if (embedToken != null)
      json['embed_token'] = embedToken;
    if (splitsMetric != null)
      json['splits_metric'] = splitsMetric;
    if (splitsStandard != null)
      json['splits_standard'] = splitsStandard;
    if (laps != null)
      json['laps'] = laps;
    if (bestEfforts != null)
      json['best_efforts'] = bestEfforts;
    return json;
  }

  static List<DetailedActivityAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedActivityAllOf>() : json.map((value) => DetailedActivityAllOf.fromJson(value)).toList();
  }

  static Map<String, DetailedActivityAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedActivityAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedActivityAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedActivityAllOf-objects as value to a dart map
  static Map<String, List<DetailedActivityAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedActivityAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedActivityAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

