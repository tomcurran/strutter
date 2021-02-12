part of openapi.api;

class ActivityTotal {
  /* The number of activities considered in this total. */
  int count = null;
  /* The total distance covered by the considered activities. */
  double distance = null;
  /* The total moving time of the considered activities. */
  int movingTime = null;
  /* The total elapsed time of the considered activities. */
  int elapsedTime = null;
  /* The total elevation gain of the considered activities. */
  double elevationGain = null;
  /* The total number of achievements of the considered activities. */
  int achievementCount = null;
  ActivityTotal();

  @override
  String toString() {
    return 'ActivityTotal[count=$count, distance=$distance, movingTime=$movingTime, elapsedTime=$elapsedTime, elevationGain=$elevationGain, achievementCount=$achievementCount, ]';
  }

  ActivityTotal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    distance = json['distance'];
    movingTime = json['moving_time'];
    elapsedTime = json['elapsed_time'];
    elevationGain = json['elevation_gain'];
    achievementCount = json['achievement_count'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (distance != null)
      json['distance'] = distance;
    if (movingTime != null)
      json['moving_time'] = movingTime;
    if (elapsedTime != null)
      json['elapsed_time'] = elapsedTime;
    if (elevationGain != null)
      json['elevation_gain'] = elevationGain;
    if (achievementCount != null)
      json['achievement_count'] = achievementCount;
    return json;
  }

  static List<ActivityTotal> listFromJson(List<dynamic> json) {
    return json == null ? List<ActivityTotal>() : json.map((value) => ActivityTotal.fromJson(value)).toList();
  }

  static Map<String, ActivityTotal> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActivityTotal>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ActivityTotal.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActivityTotal-objects as value to a dart map
  static Map<String, List<ActivityTotal>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ActivityTotal>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ActivityTotal.listFromJson(value);
       });
     }
     return map;
  }
}

