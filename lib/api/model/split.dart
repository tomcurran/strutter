part of openapi.api;

class Split {
  /* The average speed of this split, in meters per second */
  double averageSpeed = null;
  /* The distance of this split, in meters */
  double distance = null;
  /* The elapsed time of this split, in seconds */
  int elapsedTime = null;
  /* The elevation difference of this split, in meters */
  double elevationDifference = null;
  /* The pacing zone of this split */
  int paceZone = null;
  /* The moving time of this split, in seconds */
  int movingTime = null;
  /* N/A */
  int split = null;
  Split();

  @override
  String toString() {
    return 'Split[averageSpeed=$averageSpeed, distance=$distance, elapsedTime=$elapsedTime, elevationDifference=$elevationDifference, paceZone=$paceZone, movingTime=$movingTime, split=$split, ]';
  }

  Split.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    averageSpeed = json['average_speed'];
    distance = json['distance'];
    elapsedTime = json['elapsed_time'];
    elevationDifference = json['elevation_difference'];
    paceZone = json['pace_zone'];
    movingTime = json['moving_time'];
    split = json['split'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (averageSpeed != null)
      json['average_speed'] = averageSpeed;
    if (distance != null)
      json['distance'] = distance;
    if (elapsedTime != null)
      json['elapsed_time'] = elapsedTime;
    if (elevationDifference != null)
      json['elevation_difference'] = elevationDifference;
    if (paceZone != null)
      json['pace_zone'] = paceZone;
    if (movingTime != null)
      json['moving_time'] = movingTime;
    if (split != null)
      json['split'] = split;
    return json;
  }

  static List<Split> listFromJson(List<dynamic> json) {
    return json == null ? List<Split>() : json.map((value) => Split.fromJson(value)).toList();
  }

  static Map<String, Split> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Split>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Split.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Split-objects as value to a dart map
  static Map<String, List<Split>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Split>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Split.listFromJson(value);
       });
     }
     return map;
  }
}

