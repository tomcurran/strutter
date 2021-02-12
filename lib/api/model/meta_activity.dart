part of openapi.api;

class MetaActivity {
  /* The unique identifier of the activity */
  int id = null;
  MetaActivity();

  @override
  String toString() {
    return 'MetaActivity[id=$id, ]';
  }

  MetaActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<MetaActivity> listFromJson(List<dynamic> json) {
    return json == null ? List<MetaActivity>() : json.map((value) => MetaActivity.fromJson(value)).toList();
  }

  static Map<String, MetaActivity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MetaActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MetaActivity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MetaActivity-objects as value to a dart map
  static Map<String, List<MetaActivity>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MetaActivity>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MetaActivity.listFromJson(value);
       });
     }
     return map;
  }
}

