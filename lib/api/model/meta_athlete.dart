part of openapi.api;

class MetaAthlete {
  /* The unique identifier of the athlete */
  int id = null;
  MetaAthlete();

  @override
  String toString() {
    return 'MetaAthlete[id=$id, ]';
  }

  MetaAthlete.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<MetaAthlete> listFromJson(List<dynamic> json) {
    return json == null ? List<MetaAthlete>() : json.map((value) => MetaAthlete.fromJson(value)).toList();
  }

  static Map<String, MetaAthlete> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MetaAthlete>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MetaAthlete.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MetaAthlete-objects as value to a dart map
  static Map<String, List<MetaAthlete>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MetaAthlete>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MetaAthlete.listFromJson(value);
       });
     }
     return map;
  }
}

