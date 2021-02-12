part of openapi.api;

class DetailedSegmentEffort {
  /* The unique identifier of this effort */
  int id = null;
  /* The unique identifier of the activity related to this effort */
  int activityId = null;
  /* The effort's elapsed time */
  int elapsedTime = null;
  /* The time at which the effort was started. */
  DateTime startDate = null;
  /* The time at which the effort was started in the local timezone. */
  DateTime startDateLocal = null;
  /* The effort's distance in meters */
  double distance = null;
  /* Whether this effort is the current best on the leaderboard */
  bool isKom = null;
  /* The name of the segment on which this effort was performed */
  String name = null;
  
  MetaActivity activity = null;
  
  MetaAthlete athlete = null;
  /* The effort's moving time */
  int movingTime = null;
  /* The start index of this effort in its activity's stream */
  int startIndex = null;
  /* The end index of this effort in its activity's stream */
  int endIndex = null;
  /* The effort's average cadence */
  double averageCadence = null;
  /* The average wattage of this effort */
  double averageWatts = null;
  /* For riding efforts, whether the wattage was reported by a dedicated recording device */
  bool deviceWatts = null;
  /* The heart heart rate of the athlete during this effort */
  double averageHeartrate = null;
  /* The maximum heart rate of the athlete during this effort */
  double maxHeartrate = null;
  
  SummarySegment segment = null;
  /* The rank of the effort on the global leaderboard if it belongs in the top 10 at the time of upload */
  int komRank = null;
  /* The rank of the effort on the athlete's leaderboard if it belongs in the top 3 at the time of upload */
  int prRank = null;
  /* Whether this effort should be hidden when viewed within an activity */
  bool hidden = null;
  DetailedSegmentEffort();

  @override
  String toString() {
    return 'DetailedSegmentEffort[id=$id, activityId=$activityId, elapsedTime=$elapsedTime, startDate=$startDate, startDateLocal=$startDateLocal, distance=$distance, isKom=$isKom, name=$name, activity=$activity, athlete=$athlete, movingTime=$movingTime, startIndex=$startIndex, endIndex=$endIndex, averageCadence=$averageCadence, averageWatts=$averageWatts, deviceWatts=$deviceWatts, averageHeartrate=$averageHeartrate, maxHeartrate=$maxHeartrate, segment=$segment, komRank=$komRank, prRank=$prRank, hidden=$hidden, ]';
  }

  DetailedSegmentEffort.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    activityId = json['activity_id'];
    elapsedTime = json['elapsed_time'];
    startDate = (json['start_date'] == null) ?
      null :
      DateTime.parse(json['start_date']);
    startDateLocal = (json['start_date_local'] == null) ?
      null :
      DateTime.parse(json['start_date_local']);
    distance = json['distance'];
    isKom = json['is_kom'];
    name = json['name'];
    activity = (json['activity'] == null) ?
      null :
      MetaActivity.fromJson(json['activity']);
    athlete = (json['athlete'] == null) ?
      null :
      MetaAthlete.fromJson(json['athlete']);
    movingTime = json['moving_time'];
    startIndex = json['start_index'];
    endIndex = json['end_index'];
    averageCadence = json['average_cadence'];
    averageWatts = json['average_watts'];
    deviceWatts = json['device_watts'];
    averageHeartrate = json['average_heartrate'];
    maxHeartrate = json['max_heartrate'];
    segment = (json['segment'] == null) ?
      null :
      SummarySegment.fromJson(json['segment']);
    komRank = json['kom_rank'];
    prRank = json['pr_rank'];
    hidden = json['hidden'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (activityId != null)
      json['activity_id'] = activityId;
    if (elapsedTime != null)
      json['elapsed_time'] = elapsedTime;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (startDateLocal != null)
      json['start_date_local'] = startDateLocal == null ? null : startDateLocal.toUtc().toIso8601String();
    if (distance != null)
      json['distance'] = distance;
    if (isKom != null)
      json['is_kom'] = isKom;
    if (name != null)
      json['name'] = name;
    if (activity != null)
      json['activity'] = activity;
    if (athlete != null)
      json['athlete'] = athlete;
    if (movingTime != null)
      json['moving_time'] = movingTime;
    if (startIndex != null)
      json['start_index'] = startIndex;
    if (endIndex != null)
      json['end_index'] = endIndex;
    if (averageCadence != null)
      json['average_cadence'] = averageCadence;
    if (averageWatts != null)
      json['average_watts'] = averageWatts;
    if (deviceWatts != null)
      json['device_watts'] = deviceWatts;
    if (averageHeartrate != null)
      json['average_heartrate'] = averageHeartrate;
    if (maxHeartrate != null)
      json['max_heartrate'] = maxHeartrate;
    if (segment != null)
      json['segment'] = segment;
    if (komRank != null)
      json['kom_rank'] = komRank;
    if (prRank != null)
      json['pr_rank'] = prRank;
    if (hidden != null)
      json['hidden'] = hidden;
    return json;
  }

  static List<DetailedSegmentEffort> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedSegmentEffort>() : json.map((value) => DetailedSegmentEffort.fromJson(value)).toList();
  }

  static Map<String, DetailedSegmentEffort> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedSegmentEffort>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedSegmentEffort.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedSegmentEffort-objects as value to a dart map
  static Map<String, List<DetailedSegmentEffort>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedSegmentEffort>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedSegmentEffort.listFromJson(value);
       });
     }
     return map;
  }
}

