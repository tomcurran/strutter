part of openapi.api;

class DetailedAthlete {
  /* The unique identifier of the athlete */
  int id = null;
  /* Resource state, indicates level of detail. Possible values: 1 -> \"meta\", 2 -> \"summary\", 3 -> \"detail\" */
  int resourceState = null;
  /* The athlete's first name. */
  String firstname = null;
  /* The athlete's last name. */
  String lastname = null;
  /* URL to a 62x62 pixel profile picture. */
  String profileMedium = null;
  /* URL to a 124x124 pixel profile picture. */
  String profile = null;
  /* The athlete's city. */
  String city = null;
  /* The athlete's state or geographical region. */
  String state = null;
  /* The athlete's country. */
  String country = null;
  /* The athlete's sex. */
  String sex = null;
  //enum sexEnum {  M,  F,  };{
  /* Deprecated.  Use summit field instead. Whether the athlete has any Summit subscription. */
  bool premium = null;
  /* Whether the athlete has any Summit subscription. */
  bool summit = null;
  /* The time at which the athlete was created. */
  DateTime createdAt = null;
  /* The time at which the athlete was last updated. */
  DateTime updatedAt = null;
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
  DetailedAthlete();

  @override
  String toString() {
    return 'DetailedAthlete[id=$id, resourceState=$resourceState, firstname=$firstname, lastname=$lastname, profileMedium=$profileMedium, profile=$profile, city=$city, state=$state, country=$country, sex=$sex, premium=$premium, summit=$summit, createdAt=$createdAt, updatedAt=$updatedAt, followerCount=$followerCount, friendCount=$friendCount, measurementPreference=$measurementPreference, ftp=$ftp, weight=$weight, clubs=$clubs, bikes=$bikes, shoes=$shoes, ]';
  }

  DetailedAthlete.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    resourceState = json['resource_state'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    profileMedium = json['profile_medium'];
    profile = json['profile'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    sex = json['sex'];
    premium = json['premium'];
    summit = json['summit'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
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
    if (id != null)
      json['id'] = id;
    if (resourceState != null)
      json['resource_state'] = resourceState;
    if (firstname != null)
      json['firstname'] = firstname;
    if (lastname != null)
      json['lastname'] = lastname;
    if (profileMedium != null)
      json['profile_medium'] = profileMedium;
    if (profile != null)
      json['profile'] = profile;
    if (city != null)
      json['city'] = city;
    if (state != null)
      json['state'] = state;
    if (country != null)
      json['country'] = country;
    if (sex != null)
      json['sex'] = sex;
    if (premium != null)
      json['premium'] = premium;
    if (summit != null)
      json['summit'] = summit;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
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

  static List<DetailedAthlete> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedAthlete>() : json.map((value) => DetailedAthlete.fromJson(value)).toList();
  }

  static Map<String, DetailedAthlete> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedAthlete>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedAthlete.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedAthlete-objects as value to a dart map
  static Map<String, List<DetailedAthlete>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedAthlete>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedAthlete.listFromJson(value);
       });
     }
     return map;
  }
}

