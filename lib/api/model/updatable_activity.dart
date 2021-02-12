part of openapi.api;

class UpdatableActivity {
  /* Whether this activity is a commute */
  bool commute = null;
  /* Whether this activity was recorded on a training machine */
  bool trainer = null;
  /* The description of the activity */
  String description = null;
  /* The name of the activity */
  String name = null;
  
  ActivityType type = null;
  //enum typeEnum {  AlpineSki,  BackcountrySki,  Canoeing,  Crossfit,  EBikeRide,  Elliptical,  Golf,  Handcycle,  Hike,  IceSkate,  InlineSkate,  Kayaking,  Kitesurf,  NordicSki,  Ride,  RockClimbing,  RollerSki,  Rowing,  Run,  Sail,  Skateboard,  Snowboard,  Snowshoe,  Soccer,  StairStepper,  StandUpPaddling,  Surfing,  Swim,  Velomobile,  VirtualRide,  VirtualRun,  Walk,  WeightTraining,  Wheelchair,  Windsurf,  Workout,  Yoga,  };{
  /* Identifier for the gear associated with the activity. ‘none’ clears gear from activity */
  String gearId = null;
  UpdatableActivity();

  @override
  String toString() {
    return 'UpdatableActivity[commute=$commute, trainer=$trainer, description=$description, name=$name, type=$type, gearId=$gearId, ]';
  }

  UpdatableActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commute = json['commute'];
    trainer = json['trainer'];
    description = json['description'];
    name = json['name'];
    type = (json['type'] == null) ?
      null :
      ActivityType.fromJson(json['type']);
    gearId = json['gear_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commute != null)
      json['commute'] = commute;
    if (trainer != null)
      json['trainer'] = trainer;
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    if (gearId != null)
      json['gear_id'] = gearId;
    return json;
  }

  static List<UpdatableActivity> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdatableActivity>() : json.map((value) => UpdatableActivity.fromJson(value)).toList();
  }

  static Map<String, UpdatableActivity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdatableActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdatableActivity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdatableActivity-objects as value to a dart map
  static Map<String, List<UpdatableActivity>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UpdatableActivity>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UpdatableActivity.listFromJson(value);
       });
     }
     return map;
  }
}

