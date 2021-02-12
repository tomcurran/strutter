part of openapi.api;

class SummaryClub {
  /* The club's unique identifier. */
  int id = null;
  /* Resource state, indicates level of detail. Possible values: 1 -> \"meta\", 2 -> \"summary\", 3 -> \"detail\" */
  int resourceState = null;
  /* The club's name. */
  String name = null;
  /* URL to a 60x60 pixel profile picture. */
  String profileMedium = null;
  /* URL to a ~1185x580 pixel cover photo. */
  String coverPhoto = null;
  /* URL to a ~360x176  pixel cover photo. */
  String coverPhotoSmall = null;
  
  String sportType = null;
  //enum sportTypeEnum {  cycling,  running,  triathlon,  other,  };{
  /* The club's city. */
  String city = null;
  /* The club's state or geographical region. */
  String state = null;
  /* The club's country. */
  String country = null;
  /* Whether the club is private. */
  bool private = null;
  /* The club's member count. */
  int memberCount = null;
  /* Whether the club is featured or not. */
  bool featured = null;
  /* Whether the club is verified or not. */
  bool verified = null;
  /* The club's vanity URL. */
  String url = null;
  SummaryClub();

  @override
  String toString() {
    return 'SummaryClub[id=$id, resourceState=$resourceState, name=$name, profileMedium=$profileMedium, coverPhoto=$coverPhoto, coverPhotoSmall=$coverPhotoSmall, sportType=$sportType, city=$city, state=$state, country=$country, private=$private, memberCount=$memberCount, featured=$featured, verified=$verified, url=$url, ]';
  }

  SummaryClub.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    resourceState = json['resource_state'];
    name = json['name'];
    profileMedium = json['profile_medium'];
    coverPhoto = json['cover_photo'];
    coverPhotoSmall = json['cover_photo_small'];
    sportType = json['sport_type'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    private = json['private'];
    memberCount = json['member_count'];
    featured = json['featured'];
    verified = json['verified'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (resourceState != null)
      json['resource_state'] = resourceState;
    if (name != null)
      json['name'] = name;
    if (profileMedium != null)
      json['profile_medium'] = profileMedium;
    if (coverPhoto != null)
      json['cover_photo'] = coverPhoto;
    if (coverPhotoSmall != null)
      json['cover_photo_small'] = coverPhotoSmall;
    if (sportType != null)
      json['sport_type'] = sportType;
    if (city != null)
      json['city'] = city;
    if (state != null)
      json['state'] = state;
    if (country != null)
      json['country'] = country;
    if (private != null)
      json['private'] = private;
    if (memberCount != null)
      json['member_count'] = memberCount;
    if (featured != null)
      json['featured'] = featured;
    if (verified != null)
      json['verified'] = verified;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<SummaryClub> listFromJson(List<dynamic> json) {
    return json == null ? List<SummaryClub>() : json.map((value) => SummaryClub.fromJson(value)).toList();
  }

  static Map<String, SummaryClub> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummaryClub>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummaryClub.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SummaryClub-objects as value to a dart map
  static Map<String, List<SummaryClub>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SummaryClub>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SummaryClub.listFromJson(value);
       });
     }
     return map;
  }
}

