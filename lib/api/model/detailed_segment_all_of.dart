part of openapi.api;

class DetailedSegmentAllOf {
  /* The time at which the segment was created. */
  DateTime createdAt = null;
  /* The time at which the segment was last updated. */
  DateTime updatedAt = null;
  /* The segment's total elevation gain. */
  double totalElevationGain = null;
  
  PolylineMap map = null;
  /* The total number of efforts for this segment */
  int effortCount = null;
  /* The number of unique athletes who have an effort for this segment */
  int athleteCount = null;
  /* Whether this segment is considered hazardous */
  bool hazardous = null;
  /* The number of stars for this segment */
  int starCount = null;
  DetailedSegmentAllOf();

  @override
  String toString() {
    return 'DetailedSegmentAllOf[createdAt=$createdAt, updatedAt=$updatedAt, totalElevationGain=$totalElevationGain, map=$map, effortCount=$effortCount, athleteCount=$athleteCount, hazardous=$hazardous, starCount=$starCount, ]';
  }

  DetailedSegmentAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
    totalElevationGain = json['total_elevation_gain'];
    map = (json['map'] == null) ?
      null :
      PolylineMap.fromJson(json['map']);
    effortCount = json['effort_count'];
    athleteCount = json['athlete_count'];
    hazardous = json['hazardous'];
    starCount = json['star_count'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (totalElevationGain != null)
      json['total_elevation_gain'] = totalElevationGain;
    if (map != null)
      json['map'] = map;
    if (effortCount != null)
      json['effort_count'] = effortCount;
    if (athleteCount != null)
      json['athlete_count'] = athleteCount;
    if (hazardous != null)
      json['hazardous'] = hazardous;
    if (starCount != null)
      json['star_count'] = starCount;
    return json;
  }

  static List<DetailedSegmentAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedSegmentAllOf>() : json.map((value) => DetailedSegmentAllOf.fromJson(value)).toList();
  }

  static Map<String, DetailedSegmentAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedSegmentAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedSegmentAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedSegmentAllOf-objects as value to a dart map
  static Map<String, List<DetailedSegmentAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedSegmentAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedSegmentAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

