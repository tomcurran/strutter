part of openapi.api;

class RunningRace {
  /* The unique identifier of this race. */
  int id = null;
  /* The name of this race. */
  String name = null;
  /* The type of this race. */
  int runningRaceType = null;
  /* The race's distance, in meters. */
  double distance = null;
  /* The time at which the race begins started in the local timezone. */
  DateTime startDateLocal = null;
  /* The name of the city in which the race is taking place. */
  String city = null;
  /* The name of the state or geographical region in which the race is taking place. */
  String state = null;
  /* The name of the country in which the race is taking place. */
  String country = null;
  /* The set of routes that cover this race's course. */
  List<int> routeIds = [];
  /* The unit system in which the race should be displayed. */
  String measurementPreference = null;
  //enum measurementPreferenceEnum {  feet,  meters,  };{
  /* The vanity URL of this race on Strava. */
  String url = null;
  /* The URL of this race's website. */
  String websiteUrl = null;
  RunningRace();

  @override
  String toString() {
    return 'RunningRace[id=$id, name=$name, runningRaceType=$runningRaceType, distance=$distance, startDateLocal=$startDateLocal, city=$city, state=$state, country=$country, routeIds=$routeIds, measurementPreference=$measurementPreference, url=$url, websiteUrl=$websiteUrl, ]';
  }

  RunningRace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    runningRaceType = json['running_race_type'];
    distance = json['distance'];
    startDateLocal = (json['start_date_local'] == null) ?
      null :
      DateTime.parse(json['start_date_local']);
    city = json['city'];
    state = json['state'];
    country = json['country'];
    routeIds = (json['route_ids'] == null) ?
      null :
      (json['route_ids'] as List).cast<int>();
    measurementPreference = json['measurement_preference'];
    url = json['url'];
    websiteUrl = json['website_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (runningRaceType != null)
      json['running_race_type'] = runningRaceType;
    if (distance != null)
      json['distance'] = distance;
    if (startDateLocal != null)
      json['start_date_local'] = startDateLocal == null ? null : startDateLocal.toUtc().toIso8601String();
    if (city != null)
      json['city'] = city;
    if (state != null)
      json['state'] = state;
    if (country != null)
      json['country'] = country;
    if (routeIds != null)
      json['route_ids'] = routeIds;
    if (measurementPreference != null)
      json['measurement_preference'] = measurementPreference;
    if (url != null)
      json['url'] = url;
    if (websiteUrl != null)
      json['website_url'] = websiteUrl;
    return json;
  }

  static List<RunningRace> listFromJson(List<dynamic> json) {
    return json == null ? List<RunningRace>() : json.map((value) => RunningRace.fromJson(value)).toList();
  }

  static Map<String, RunningRace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RunningRace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RunningRace.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RunningRace-objects as value to a dart map
  static Map<String, List<RunningRace>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RunningRace>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RunningRace.listFromJson(value);
       });
     }
     return map;
  }
}

