part of openapi.api;

class SummarySegmentEffort {
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
  SummarySegmentEffort();

  @override
  String toString() {
    return 'SummarySegmentEffort[id=$id, activityId=$activityId, elapsedTime=$elapsedTime, startDate=$startDate, startDateLocal=$startDateLocal, distance=$distance, isKom=$isKom, ]';
  }

  SummarySegmentEffort.fromJson(Map<String, dynamic> json) {
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
    return json;
  }

  static List<SummarySegmentEffort> listFromJson(List<dynamic> json) {
    return json == null ? List<SummarySegmentEffort>() : json.map((value) => SummarySegmentEffort.fromJson(value)).toList();
  }

  static Map<String, SummarySegmentEffort> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummarySegmentEffort>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummarySegmentEffort.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SummarySegmentEffort-objects as value to a dart map
  static Map<String, List<SummarySegmentEffort>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SummarySegmentEffort>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SummarySegmentEffort.listFromJson(value);
       });
     }
     return map;
  }
}

