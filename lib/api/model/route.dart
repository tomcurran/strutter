part of openapi.api;

class Route {
  
  SummaryAthlete athlete = null;
  /* The description of the route */
  String description = null;
  /* The route's distance, in meters */
  double distance = null;
  /* The route's elevation gain. */
  double elevationGain = null;
  /* The unique identifier of this route */
  int id = null;
  /* The unique identifier of the route in string format */
  String idStr = null;
  
  PolylineMap map = null;
  /* The name of this route */
  String name = null;
  /* Whether this route is private */
  bool private = null;
  /* Whether this route is starred by the logged-in athlete */
  bool starred = null;
  /* An epoch timestamp of when the route was created */
  int timestamp = null;
  /* This route's type (1 for ride, 2 for runs) */
  int type = null;
  /* This route's sub-type (1 for road, 2 for mountain bike, 3 for cross, 4 for trail, 5 for mixed) */
  int subType = null;
  /* The time at which the route was created */
  DateTime createdAt = null;
  /* The time at which the route was last updated */
  DateTime updatedAt = null;
  /* Estimated time in seconds for the authenticated athlete to complete route */
  int estimatedMovingTime = null;
  /* The segments traversed by this route */
  List<SummarySegment> segments = [];
  Route();

  @override
  String toString() {
    return 'Route[athlete=$athlete, description=$description, distance=$distance, elevationGain=$elevationGain, id=$id, idStr=$idStr, map=$map, name=$name, private=$private, starred=$starred, timestamp=$timestamp, type=$type, subType=$subType, createdAt=$createdAt, updatedAt=$updatedAt, estimatedMovingTime=$estimatedMovingTime, segments=$segments, ]';
  }

  Route.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    athlete = (json['athlete'] == null) ?
      null :
      SummaryAthlete.fromJson(json['athlete']);
    description = json['description'];
    distance = json['distance'];
    elevationGain = json['elevation_gain'];
    id = json['id'];
    idStr = json['id_str'];
    map = (json['map'] == null) ?
      null :
      PolylineMap.fromJson(json['map']);
    name = json['name'];
    private = json['private'];
    starred = json['starred'];
    timestamp = json['timestamp'];
    type = json['type'];
    subType = json['sub_type'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
    estimatedMovingTime = json['estimated_moving_time'];
    segments = (json['segments'] == null) ?
      null :
      SummarySegment.listFromJson(json['segments']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (athlete != null)
      json['athlete'] = athlete;
    if (description != null)
      json['description'] = description;
    if (distance != null)
      json['distance'] = distance;
    if (elevationGain != null)
      json['elevation_gain'] = elevationGain;
    if (id != null)
      json['id'] = id;
    if (idStr != null)
      json['id_str'] = idStr;
    if (map != null)
      json['map'] = map;
    if (name != null)
      json['name'] = name;
    if (private != null)
      json['private'] = private;
    if (starred != null)
      json['starred'] = starred;
    if (timestamp != null)
      json['timestamp'] = timestamp;
    if (type != null)
      json['type'] = type;
    if (subType != null)
      json['sub_type'] = subType;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (estimatedMovingTime != null)
      json['estimated_moving_time'] = estimatedMovingTime;
    if (segments != null)
      json['segments'] = segments;
    return json;
  }

  static List<Route> listFromJson(List<dynamic> json) {
    return json == null ? List<Route>() : json.map((value) => Route.fromJson(value)).toList();
  }

  static Map<String, Route> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Route>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Route.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Route-objects as value to a dart map
  static Map<String, List<Route>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Route>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Route.listFromJson(value);
       });
     }
     return map;
  }
}

