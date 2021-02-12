part of openapi.api;

class DetailedSegment {
  /* The unique identifier of this segment */
  int id = null;
  /* The name of this segment */
  String name = null;
  
  String activityType = null;
  //enum activityTypeEnum {  Ride,  Run,  };{
  /* The segment's distance, in meters */
  double distance = null;
  /* The segment's average grade, in percents */
  double averageGrade = null;
  /* The segments's maximum grade, in percents */
  double maximumGrade = null;
  /* The segments's highest elevation, in meters */
  double elevationHigh = null;
  /* The segments's lowest elevation, in meters */
  double elevationLow = null;
  /* A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. */
  List<double> startLatlng = [];
  /* A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. */
  List<double> endLatlng = [];
  /* The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. */
  int climbCategory = null;
  /* The segments's city. */
  String city = null;
  /* The segments's state or geographical region. */
  String state = null;
  /* The segment's country. */
  String country = null;
  /* Whether this segment is private. */
  bool private = null;
  
  SummarySegmentEffort athletePrEffort = null;
  
  SummaryPRSegmentEffort athleteSegmentStats = null;
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
  DetailedSegment();

  @override
  String toString() {
    return 'DetailedSegment[id=$id, name=$name, activityType=$activityType, distance=$distance, averageGrade=$averageGrade, maximumGrade=$maximumGrade, elevationHigh=$elevationHigh, elevationLow=$elevationLow, startLatlng=$startLatlng, endLatlng=$endLatlng, climbCategory=$climbCategory, city=$city, state=$state, country=$country, private=$private, athletePrEffort=$athletePrEffort, athleteSegmentStats=$athleteSegmentStats, createdAt=$createdAt, updatedAt=$updatedAt, totalElevationGain=$totalElevationGain, map=$map, effortCount=$effortCount, athleteCount=$athleteCount, hazardous=$hazardous, starCount=$starCount, ]';
  }

  DetailedSegment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    activityType = json['activity_type'];
    distance = json['distance'];
    averageGrade = json['average_grade'];
    maximumGrade = json['maximum_grade'];
    elevationHigh = json['elevation_high'];
    elevationLow = json['elevation_low'];
    startLatlng = (json['start_latlng'] == null) ?
      null :
      (json['start_latlng'] as List).cast<double>();
    endLatlng = (json['end_latlng'] == null) ?
      null :
      (json['end_latlng'] as List).cast<double>();
    climbCategory = json['climb_category'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    private = json['private'];
    athletePrEffort = (json['athlete_pr_effort'] == null) ?
      null :
      SummarySegmentEffort.fromJson(json['athlete_pr_effort']);
    athleteSegmentStats = (json['athlete_segment_stats'] == null) ?
      null :
      SummaryPRSegmentEffort.fromJson(json['athlete_segment_stats']);
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
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (activityType != null)
      json['activity_type'] = activityType;
    if (distance != null)
      json['distance'] = distance;
    if (averageGrade != null)
      json['average_grade'] = averageGrade;
    if (maximumGrade != null)
      json['maximum_grade'] = maximumGrade;
    if (elevationHigh != null)
      json['elevation_high'] = elevationHigh;
    if (elevationLow != null)
      json['elevation_low'] = elevationLow;
    if (startLatlng != null)
      json['start_latlng'] = startLatlng;
    if (endLatlng != null)
      json['end_latlng'] = endLatlng;
    if (climbCategory != null)
      json['climb_category'] = climbCategory;
    if (city != null)
      json['city'] = city;
    if (state != null)
      json['state'] = state;
    if (country != null)
      json['country'] = country;
    if (private != null)
      json['private'] = private;
    if (athletePrEffort != null)
      json['athlete_pr_effort'] = athletePrEffort;
    if (athleteSegmentStats != null)
      json['athlete_segment_stats'] = athleteSegmentStats;
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

  static List<DetailedSegment> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedSegment>() : json.map((value) => DetailedSegment.fromJson(value)).toList();
  }

  static Map<String, DetailedSegment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedSegment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedSegment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedSegment-objects as value to a dart map
  static Map<String, List<DetailedSegment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedSegment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedSegment.listFromJson(value);
       });
     }
     return map;
  }
}

