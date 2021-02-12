part of openapi.api;

class SummaryGear {
  /* The gear's unique identifier. */
  String id = null;
  /* Resource state, indicates level of detail. Possible values: 2 -> \"summary\", 3 -> \"detail\" */
  int resourceState = null;
  /* Whether this gear's is the owner's default one. */
  bool primary = null;
  /* The gear's name. */
  String name = null;
  /* The distance logged with this gear. */
  double distance = null;
  SummaryGear();

  @override
  String toString() {
    return 'SummaryGear[id=$id, resourceState=$resourceState, primary=$primary, name=$name, distance=$distance, ]';
  }

  SummaryGear.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    resourceState = json['resource_state'];
    primary = json['primary'];
    name = json['name'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (resourceState != null)
      json['resource_state'] = resourceState;
    if (primary != null)
      json['primary'] = primary;
    if (name != null)
      json['name'] = name;
    if (distance != null)
      json['distance'] = distance;
    return json;
  }

  static List<SummaryGear> listFromJson(List<dynamic> json) {
    return json == null ? List<SummaryGear>() : json.map((value) => SummaryGear.fromJson(value)).toList();
  }

  static Map<String, SummaryGear> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummaryGear>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummaryGear.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SummaryGear-objects as value to a dart map
  static Map<String, List<SummaryGear>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SummaryGear>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SummaryGear.listFromJson(value);
       });
     }
     return map;
  }
}

