part of openapi.api;

class SummaryPRSegmentEffort {
  /* The unique identifier of the activity related to the PR effort. */
  int prActivityId = null;
  /* The elapsed time ot the PR effort. */
  int prElapsedTime = null;
  /* The time at which the PR effort was started. */
  DateTime prDate = null;
  /* Number of efforts by the authenticated athlete on this segment. */
  int effortCount = null;
  SummaryPRSegmentEffort();

  @override
  String toString() {
    return 'SummaryPRSegmentEffort[prActivityId=$prActivityId, prElapsedTime=$prElapsedTime, prDate=$prDate, effortCount=$effortCount, ]';
  }

  SummaryPRSegmentEffort.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    prActivityId = json['pr_activity_id'];
    prElapsedTime = json['pr_elapsed_time'];
    prDate = (json['pr_date'] == null) ?
      null :
      DateTime.parse(json['pr_date']);
    effortCount = json['effort_count'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (prActivityId != null)
      json['pr_activity_id'] = prActivityId;
    if (prElapsedTime != null)
      json['pr_elapsed_time'] = prElapsedTime;
    if (prDate != null)
      json['pr_date'] = prDate == null ? null : prDate.toUtc().toIso8601String();
    if (effortCount != null)
      json['effort_count'] = effortCount;
    return json;
  }

  static List<SummaryPRSegmentEffort> listFromJson(List<dynamic> json) {
    return json == null ? List<SummaryPRSegmentEffort>() : json.map((value) => SummaryPRSegmentEffort.fromJson(value)).toList();
  }

  static Map<String, SummaryPRSegmentEffort> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummaryPRSegmentEffort>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummaryPRSegmentEffort.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SummaryPRSegmentEffort-objects as value to a dart map
  static Map<String, List<SummaryPRSegmentEffort>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SummaryPRSegmentEffort>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SummaryPRSegmentEffort.listFromJson(value);
       });
     }
     return map;
  }
}

