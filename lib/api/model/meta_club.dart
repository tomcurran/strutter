part of openapi.api;

class MetaClub {
  /* The club's unique identifier. */
  int id = null;
  /* Resource state, indicates level of detail. Possible values: 1 -> \"meta\", 2 -> \"summary\", 3 -> \"detail\" */
  int resourceState = null;
  /* The club's name. */
  String name = null;
  MetaClub();

  @override
  String toString() {
    return 'MetaClub[id=$id, resourceState=$resourceState, name=$name, ]';
  }

  MetaClub.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    resourceState = json['resource_state'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (resourceState != null)
      json['resource_state'] = resourceState;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<MetaClub> listFromJson(List<dynamic> json) {
    return json == null ? List<MetaClub>() : json.map((value) => MetaClub.fromJson(value)).toList();
  }

  static Map<String, MetaClub> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MetaClub>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MetaClub.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MetaClub-objects as value to a dart map
  static Map<String, List<MetaClub>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MetaClub>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MetaClub.listFromJson(value);
       });
     }
     return map;
  }
}

