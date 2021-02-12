part of openapi.api;

class Lap {
  /* The unique identifier of this lap */
  int id = null;
  
  MetaActivity activity = null;
  
  MetaAthlete athlete = null;
  /* The lap's average cadence */
  double averageCadence = null;
  /* The lap's average speed */
  double averageSpeed = null;
  /* The lap's distance, in meters */
  double distance = null;
  /* The lap's elapsed time, in seconds */
  int elapsedTime = null;
  /* The start index of this effort in its activity's stream */
  int startIndex = null;
  /* The end index of this effort in its activity's stream */
  int endIndex = null;
  /* The index of this lap in the activity it belongs to */
  int lapIndex = null;
  /* The maximum speed of this lat, in meters per second */
  double maxSpeed = null;
  /* The lap's moving time, in seconds */
  int movingTime = null;
  /* The name of the lap */
  String name = null;
  /* The athlete's pace zone during this lap */
  int paceZone = null;
  
  int split = null;
  /* The time at which the lap was started. */
  DateTime startDate = null;
  /* The time at which the lap was started in the local timezone. */
  DateTime startDateLocal = null;
  /* The elevation gain of this lap, in meters */
  double totalElevationGain = null;
  Lap();

  @override
  String toString() {
    return 'Lap[id=$id, activity=$activity, athlete=$athlete, averageCadence=$averageCadence, averageSpeed=$averageSpeed, distance=$distance, elapsedTime=$elapsedTime, startIndex=$startIndex, endIndex=$endIndex, lapIndex=$lapIndex, maxSpeed=$maxSpeed, movingTime=$movingTime, name=$name, paceZone=$paceZone, split=$split, startDate=$startDate, startDateLocal=$startDateLocal, totalElevationGain=$totalElevationGain, ]';
  }

  Lap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    activity = (json['activity'] == null) ?
      null :
      MetaActivity.fromJson(json['activity']);
    athlete = (json['athlete'] == null) ?
      null :
      MetaAthlete.fromJson(json['athlete']);
    averageCadence = json['average_cadence'];
    averageSpeed = json['average_speed'];
    distance = json['distance'];
    elapsedTime = json['elapsed_time'];
    startIndex = json['start_index'];
    endIndex = json['end_index'];
    lapIndex = json['lap_index'];
    maxSpeed = json['max_speed'];
    movingTime = json['moving_time'];
    name = json['name'];
    paceZone = json['pace_zone'];
    split = json['split'];
    startDate = (json['start_date'] == null) ?
      null :
      DateTime.parse(json['start_date']);
    startDateLocal = (json['start_date_local'] == null) ?
      null :
      DateTime.parse(json['start_date_local']);
    totalElevationGain = json['total_elevation_gain'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (activity != null)
      json['activity'] = activity;
    if (athlete != null)
      json['athlete'] = athlete;
    if (averageCadence != null)
      json['average_cadence'] = averageCadence;
    if (averageSpeed != null)
      json['average_speed'] = averageSpeed;
    if (distance != null)
      json['distance'] = distance;
    if (elapsedTime != null)
      json['elapsed_time'] = elapsedTime;
    if (startIndex != null)
      json['start_index'] = startIndex;
    if (endIndex != null)
      json['end_index'] = endIndex;
    if (lapIndex != null)
      json['lap_index'] = lapIndex;
    if (maxSpeed != null)
      json['max_speed'] = maxSpeed;
    if (movingTime != null)
      json['moving_time'] = movingTime;
    if (name != null)
      json['name'] = name;
    if (paceZone != null)
      json['pace_zone'] = paceZone;
    if (split != null)
      json['split'] = split;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (startDateLocal != null)
      json['start_date_local'] = startDateLocal == null ? null : startDateLocal.toUtc().toIso8601String();
    if (totalElevationGain != null)
      json['total_elevation_gain'] = totalElevationGain;
    return json;
  }

  static List<Lap> listFromJson(List<dynamic> json) {
    return json == null ? List<Lap>() : json.map((value) => Lap.fromJson(value)).toList();
  }

  static Map<String, Lap> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Lap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Lap.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Lap-objects as value to a dart map
  static Map<String, List<Lap>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Lap>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Lap.listFromJson(value);
       });
     }
     return map;
  }
}

