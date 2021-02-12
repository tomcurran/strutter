part of openapi.api;

class DetailedAthleteAllOf {
  /* The athlete's follower count. */
  int followerCount = null;
  /* The athlete's friend count. */
  int friendCount = null;
  /* The athlete's preferred unit system. */
  String measurementPreference = null;
  //enum measurementPreferenceEnum {  feet,  meters,  };{
  /* The athlete's FTP (Functional Threshold Power). */
  int ftp = null;
  /* The athlete's weight. */
  double weight = null;
  /* The athlete's clubs. */
  List<SummaryClub> clubs = [];
  /* The athlete's bikes. */
  List<SummaryGear> bikes = [];
  /* The athlete's shoes. */
  List<SummaryGear> shoes = [];
  DetailedAthleteAllOf();

  @override
  String toString() {
    return 'DetailedAthleteAllOf[followerCount=$followerCount, friendCount=$friendCount, measurementPreference=$measurementPreference, ftp=$ftp, weight=$weight, clubs=$clubs, bikes=$bikes, shoes=$shoes, ]';
  }

  DetailedAthleteAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    followerCount = json['follower_count'];
    friendCount = json['friend_count'];
    measurementPreference = json['measurement_preference'];
    ftp = json['ftp'];
    weight = json['weight'];
    clubs = (json['clubs'] == null) ?
      null :
      SummaryClub.listFromJson(json['clubs']);
    bikes = (json['bikes'] == null) ?
      null :
      SummaryGear.listFromJson(json['bikes']);
    shoes = (json['shoes'] == null) ?
      null :
      SummaryGear.listFromJson(json['shoes']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (followerCount != null)
      json['follower_count'] = followerCount;
    if (friendCount != null)
      json['friend_count'] = friendCount;
    if (measurementPreference != null)
      json['measurement_preference'] = measurementPreference;
    if (ftp != null)
      json['ftp'] = ftp;
    if (weight != null)
      json['weight'] = weight;
    if (clubs != null)
      json['clubs'] = clubs;
    if (bikes != null)
      json['bikes'] = bikes;
    if (shoes != null)
      json['shoes'] = shoes;
    return json;
  }

  static List<DetailedAthleteAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedAthleteAllOf>() : json.map((value) => DetailedAthleteAllOf.fromJson(value)).toList();
  }

  static Map<String, DetailedAthleteAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedAthleteAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedAthleteAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedAthleteAllOf-objects as value to a dart map
  static Map<String, List<DetailedAthleteAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedAthleteAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedAthleteAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

