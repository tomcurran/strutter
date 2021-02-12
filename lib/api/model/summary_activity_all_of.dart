part of openapi.api;

class SummaryActivityAllOf {
  /* The identifier provided at upload time */
  String externalId = null;
  /* The identifier of the upload that resulted in this activity */
  int uploadId = null;
  
  MetaAthlete athlete = null;
  /* The name of the activity */
  String name = null;
  /* The activity's distance, in meters */
  double distance = null;
  /* The activity's moving time, in seconds */
  int movingTime = null;
  /* The activity's elapsed time, in seconds */
  int elapsedTime = null;
  /* The activity's total elevation gain. */
  double totalElevationGain = null;
  /* The activity's highest elevation, in meters */
  double elevHigh = null;
  /* The activity's lowest elevation, in meters */
  double elevLow = null;
  
  ActivityType type = null;
  //enum typeEnum {  AlpineSki,  BackcountrySki,  Canoeing,  Crossfit,  EBikeRide,  Elliptical,  Golf,  Handcycle,  Hike,  IceSkate,  InlineSkate,  Kayaking,  Kitesurf,  NordicSki,  Ride,  RockClimbing,  RollerSki,  Rowing,  Run,  Sail,  Skateboard,  Snowboard,  Snowshoe,  Soccer,  StairStepper,  StandUpPaddling,  Surfing,  Swim,  Velomobile,  VirtualRide,  VirtualRun,  Walk,  WeightTraining,  Wheelchair,  Windsurf,  Workout,  Yoga,  };{
  /* The time at which the activity was started. */
  DateTime startDate = null;
  /* The time at which the activity was started in the local timezone. */
  DateTime startDateLocal = null;
  /* The timezone of the activity */
  String timezone = null;
  /* A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. */
  List<double> startLatlng = [];
  /* A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. */
  List<double> endLatlng = [];
  /* The number of achievements gained during this activity */
  int achievementCount = null;
  /* The number of kudos given for this activity */
  int kudosCount = null;
  /* The number of comments for this activity */
  int commentCount = null;
  /* The number of athletes for taking part in a group activity */
  int athleteCount = null;
  /* The number of Instagram photos for this activity */
  int photoCount = null;
  /* The number of Instagram and Strava photos for this activity */
  int totalPhotoCount = null;
  
  PolylineMap map = null;
  /* Whether this activity was recorded on a training machine */
  bool trainer = null;
  /* Whether this activity is a commute */
  bool commute = null;
  /* Whether this activity was created manually */
  bool manual = null;
  /* Whether this activity is private */
  bool private = null;
  /* Whether this activity is flagged */
  bool flagged = null;
  /* The activity's workout type */
  int workoutType = null;
  /* The unique identifier of the upload in string format */
  String uploadIdStr = null;
  /* The activity's average speed, in meters per second */
  double averageSpeed = null;
  /* The activity's max speed, in meters per second */
  double maxSpeed = null;
  /* Whether the logged-in athlete has kudoed this activity */
  bool hasKudoed = null;
  /* The id of the gear for the activity */
  String gearId = null;
  /* The total work done in kilojoules during this activity. Rides only */
  double kilojoules = null;
  /* Average power output in watts during this activity. Rides only */
  double averageWatts = null;
  /* Whether the watts are from a power meter, false if estimated */
  bool deviceWatts = null;
  /* Rides with power meter data only */
  int maxWatts = null;
  /* Similar to Normalized Power. Rides with power meter data only */
  int weightedAverageWatts = null;
  SummaryActivityAllOf();

  @override
  String toString() {
    return 'SummaryActivityAllOf[externalId=$externalId, uploadId=$uploadId, athlete=$athlete, name=$name, distance=$distance, movingTime=$movingTime, elapsedTime=$elapsedTime, totalElevationGain=$totalElevationGain, elevHigh=$elevHigh, elevLow=$elevLow, type=$type, startDate=$startDate, startDateLocal=$startDateLocal, timezone=$timezone, startLatlng=$startLatlng, endLatlng=$endLatlng, achievementCount=$achievementCount, kudosCount=$kudosCount, commentCount=$commentCount, athleteCount=$athleteCount, photoCount=$photoCount, totalPhotoCount=$totalPhotoCount, map=$map, trainer=$trainer, commute=$commute, manual=$manual, private=$private, flagged=$flagged, workoutType=$workoutType, uploadIdStr=$uploadIdStr, averageSpeed=$averageSpeed, maxSpeed=$maxSpeed, hasKudoed=$hasKudoed, gearId=$gearId, kilojoules=$kilojoules, averageWatts=$averageWatts, deviceWatts=$deviceWatts, maxWatts=$maxWatts, weightedAverageWatts=$weightedAverageWatts, ]';
  }

  SummaryActivityAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    externalId = json['external_id'];
    uploadId = json['upload_id'];
    athlete = (json['athlete'] == null) ?
      null :
      MetaAthlete.fromJson(json['athlete']);
    name = json['name'];
    distance = json['distance'];
    movingTime = json['moving_time'];
    elapsedTime = json['elapsed_time'];
    totalElevationGain = json['total_elevation_gain'];
    elevHigh = json['elev_high'];
    elevLow = json['elev_low'];
    type = (json['type'] == null) ?
      null :
      ActivityType.fromJson(json['type']);
    startDate = (json['start_date'] == null) ?
      null :
      DateTime.parse(json['start_date']);
    startDateLocal = (json['start_date_local'] == null) ?
      null :
      DateTime.parse(json['start_date_local']);
    timezone = json['timezone'];
    startLatlng = (json['start_latlng'] == null) ?
      null :
      (json['start_latlng'] as List).cast<double>();
    endLatlng = (json['end_latlng'] == null) ?
      null :
      (json['end_latlng'] as List).cast<double>();
    achievementCount = json['achievement_count'];
    kudosCount = json['kudos_count'];
    commentCount = json['comment_count'];
    athleteCount = json['athlete_count'];
    photoCount = json['photo_count'];
    totalPhotoCount = json['total_photo_count'];
    map = (json['map'] == null) ?
      null :
      PolylineMap.fromJson(json['map']);
    trainer = json['trainer'];
    commute = json['commute'];
    manual = json['manual'];
    private = json['private'];
    flagged = json['flagged'];
    workoutType = json['workout_type'];
    uploadIdStr = json['upload_id_str'];
    averageSpeed = json['average_speed'];
    maxSpeed = json['max_speed'];
    hasKudoed = json['has_kudoed'];
    gearId = json['gear_id'];
    kilojoules = json['kilojoules'];
    averageWatts = json['average_watts'];
    deviceWatts = json['device_watts'];
    maxWatts = json['max_watts'];
    weightedAverageWatts = json['weighted_average_watts'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (externalId != null)
      json['external_id'] = externalId;
    if (uploadId != null)
      json['upload_id'] = uploadId;
    if (athlete != null)
      json['athlete'] = athlete;
    if (name != null)
      json['name'] = name;
    if (distance != null)
      json['distance'] = distance;
    if (movingTime != null)
      json['moving_time'] = movingTime;
    if (elapsedTime != null)
      json['elapsed_time'] = elapsedTime;
    if (totalElevationGain != null)
      json['total_elevation_gain'] = totalElevationGain;
    if (elevHigh != null)
      json['elev_high'] = elevHigh;
    if (elevLow != null)
      json['elev_low'] = elevLow;
    if (type != null)
      json['type'] = type;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (startDateLocal != null)
      json['start_date_local'] = startDateLocal == null ? null : startDateLocal.toUtc().toIso8601String();
    if (timezone != null)
      json['timezone'] = timezone;
    if (startLatlng != null)
      json['start_latlng'] = startLatlng;
    if (endLatlng != null)
      json['end_latlng'] = endLatlng;
    if (achievementCount != null)
      json['achievement_count'] = achievementCount;
    if (kudosCount != null)
      json['kudos_count'] = kudosCount;
    if (commentCount != null)
      json['comment_count'] = commentCount;
    if (athleteCount != null)
      json['athlete_count'] = athleteCount;
    if (photoCount != null)
      json['photo_count'] = photoCount;
    if (totalPhotoCount != null)
      json['total_photo_count'] = totalPhotoCount;
    if (map != null)
      json['map'] = map;
    if (trainer != null)
      json['trainer'] = trainer;
    if (commute != null)
      json['commute'] = commute;
    if (manual != null)
      json['manual'] = manual;
    if (private != null)
      json['private'] = private;
    if (flagged != null)
      json['flagged'] = flagged;
    if (workoutType != null)
      json['workout_type'] = workoutType;
    if (uploadIdStr != null)
      json['upload_id_str'] = uploadIdStr;
    if (averageSpeed != null)
      json['average_speed'] = averageSpeed;
    if (maxSpeed != null)
      json['max_speed'] = maxSpeed;
    if (hasKudoed != null)
      json['has_kudoed'] = hasKudoed;
    if (gearId != null)
      json['gear_id'] = gearId;
    if (kilojoules != null)
      json['kilojoules'] = kilojoules;
    if (averageWatts != null)
      json['average_watts'] = averageWatts;
    if (deviceWatts != null)
      json['device_watts'] = deviceWatts;
    if (maxWatts != null)
      json['max_watts'] = maxWatts;
    if (weightedAverageWatts != null)
      json['weighted_average_watts'] = weightedAverageWatts;
    return json;
  }

  static List<SummaryActivityAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<SummaryActivityAllOf>() : json.map((value) => SummaryActivityAllOf.fromJson(value)).toList();
  }

  static Map<String, SummaryActivityAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummaryActivityAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummaryActivityAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SummaryActivityAllOf-objects as value to a dart map
  static Map<String, List<SummaryActivityAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SummaryActivityAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SummaryActivityAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

