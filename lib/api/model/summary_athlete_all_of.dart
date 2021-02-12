part of openapi.api;

class SummaryAthleteAllOf {
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
  SummaryAthleteAllOf();

  @override
  String toString() {
    return 'SummaryAthleteAllOf[resourceState=$resourceState, firstname=$firstname, lastname=$lastname, profileMedium=$profileMedium, profile=$profile, city=$city, state=$state, country=$country, sex=$sex, premium=$premium, summit=$summit, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  SummaryAthleteAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
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
    return json;
  }

  static List<SummaryAthleteAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<SummaryAthleteAllOf>() : json.map((value) => SummaryAthleteAllOf.fromJson(value)).toList();
  }

  static Map<String, SummaryAthleteAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummaryAthleteAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummaryAthleteAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SummaryAthleteAllOf-objects as value to a dart map
  static Map<String, List<SummaryAthleteAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SummaryAthleteAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SummaryAthleteAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

