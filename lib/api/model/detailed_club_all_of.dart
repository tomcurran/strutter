part of openapi.api;

class DetailedClubAllOf {
  /* The membership status of the logged-in athlete. */
  String membership = null;
  //enum membershipEnum {  member,  pending,  };{
  /* Whether the currently logged-in athlete is an administrator of this club. */
  bool admin = null;
  /* Whether the currently logged-in athlete is the owner of this club. */
  bool owner = null;
  /* The number of athletes in the club that the logged-in athlete follows. */
  int followingCount = null;
  DetailedClubAllOf();

  @override
  String toString() {
    return 'DetailedClubAllOf[membership=$membership, admin=$admin, owner=$owner, followingCount=$followingCount, ]';
  }

  DetailedClubAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    membership = json['membership'];
    admin = json['admin'];
    owner = json['owner'];
    followingCount = json['following_count'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (membership != null)
      json['membership'] = membership;
    if (admin != null)
      json['admin'] = admin;
    if (owner != null)
      json['owner'] = owner;
    if (followingCount != null)
      json['following_count'] = followingCount;
    return json;
  }

  static List<DetailedClubAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedClubAllOf>() : json.map((value) => DetailedClubAllOf.fromJson(value)).toList();
  }

  static Map<String, DetailedClubAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedClubAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedClubAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedClubAllOf-objects as value to a dart map
  static Map<String, List<DetailedClubAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedClubAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedClubAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

