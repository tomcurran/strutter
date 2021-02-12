part of openapi.api;

class ActivityStats {
  /* The longest distance ridden by the athlete. */
  double biggestRideDistance = null;
  /* The highest climb ridden by the athlete. */
  double biggestClimbElevationGain = null;
  
  ActivityTotal recentRideTotals = null;
  
  ActivityTotal recentRunTotals = null;
  
  ActivityTotal recentSwimTotals = null;
  
  ActivityTotal ytdRideTotals = null;
  
  ActivityTotal ytdRunTotals = null;
  
  ActivityTotal ytdSwimTotals = null;
  
  ActivityTotal allRideTotals = null;
  
  ActivityTotal allRunTotals = null;
  
  ActivityTotal allSwimTotals = null;
  ActivityStats();

  @override
  String toString() {
    return 'ActivityStats[biggestRideDistance=$biggestRideDistance, biggestClimbElevationGain=$biggestClimbElevationGain, recentRideTotals=$recentRideTotals, recentRunTotals=$recentRunTotals, recentSwimTotals=$recentSwimTotals, ytdRideTotals=$ytdRideTotals, ytdRunTotals=$ytdRunTotals, ytdSwimTotals=$ytdSwimTotals, allRideTotals=$allRideTotals, allRunTotals=$allRunTotals, allSwimTotals=$allSwimTotals, ]';
  }

  ActivityStats.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    biggestRideDistance = (json['biggest_ride_distance'] == null) ?
      null :
      json['biggest_ride_distance'].toDouble();
    biggestClimbElevationGain = (json['biggest_climb_elevation_gain'] == null) ?
      null :
      json['biggest_climb_elevation_gain'].toDouble();
    recentRideTotals = (json['recent_ride_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['recent_ride_totals']);
    recentRunTotals = (json['recent_run_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['recent_run_totals']);
    recentSwimTotals = (json['recent_swim_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['recent_swim_totals']);
    ytdRideTotals = (json['ytd_ride_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['ytd_ride_totals']);
    ytdRunTotals = (json['ytd_run_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['ytd_run_totals']);
    ytdSwimTotals = (json['ytd_swim_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['ytd_swim_totals']);
    allRideTotals = (json['all_ride_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['all_ride_totals']);
    allRunTotals = (json['all_run_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['all_run_totals']);
    allSwimTotals = (json['all_swim_totals'] == null) ?
      null :
      ActivityTotal.fromJson(json['all_swim_totals']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (biggestRideDistance != null)
      json['biggest_ride_distance'] = biggestRideDistance;
    if (biggestClimbElevationGain != null)
      json['biggest_climb_elevation_gain'] = biggestClimbElevationGain;
    if (recentRideTotals != null)
      json['recent_ride_totals'] = recentRideTotals;
    if (recentRunTotals != null)
      json['recent_run_totals'] = recentRunTotals;
    if (recentSwimTotals != null)
      json['recent_swim_totals'] = recentSwimTotals;
    if (ytdRideTotals != null)
      json['ytd_ride_totals'] = ytdRideTotals;
    if (ytdRunTotals != null)
      json['ytd_run_totals'] = ytdRunTotals;
    if (ytdSwimTotals != null)
      json['ytd_swim_totals'] = ytdSwimTotals;
    if (allRideTotals != null)
      json['all_ride_totals'] = allRideTotals;
    if (allRunTotals != null)
      json['all_run_totals'] = allRunTotals;
    if (allSwimTotals != null)
      json['all_swim_totals'] = allSwimTotals;
    return json;
  }

  static List<ActivityStats> listFromJson(List<dynamic> json) {
    return json == null ? List<ActivityStats>() : json.map((value) => ActivityStats.fromJson(value)).toList();
  }

  static Map<String, ActivityStats> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActivityStats>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ActivityStats.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActivityStats-objects as value to a dart map
  static Map<String, List<ActivityStats>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ActivityStats>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ActivityStats.listFromJson(value);
       });
     }
     return map;
  }
}

