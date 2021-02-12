part of openapi.api;

class DetailedGear {
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
  /* The gear's brand name. */
  String brandName = null;
  /* The gear's model name. */
  String modelName = null;
  /* The gear's frame type (bike only). */
  int frameType = null;
  /* The gear's description. */
  String description = null;
  DetailedGear();

  @override
  String toString() {
    return 'DetailedGear[id=$id, resourceState=$resourceState, primary=$primary, name=$name, distance=$distance, brandName=$brandName, modelName=$modelName, frameType=$frameType, description=$description, ]';
  }

  DetailedGear.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    resourceState = json['resource_state'];
    primary = json['primary'];
    name = json['name'];
    distance = json['distance'];
    brandName = json['brand_name'];
    modelName = json['model_name'];
    frameType = json['frame_type'];
    description = json['description'];
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
    if (brandName != null)
      json['brand_name'] = brandName;
    if (modelName != null)
      json['model_name'] = modelName;
    if (frameType != null)
      json['frame_type'] = frameType;
    if (description != null)
      json['description'] = description;
    return json;
  }

  static List<DetailedGear> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedGear>() : json.map((value) => DetailedGear.fromJson(value)).toList();
  }

  static Map<String, DetailedGear> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedGear>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedGear.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedGear-objects as value to a dart map
  static Map<String, List<DetailedGear>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedGear>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedGear.listFromJson(value);
       });
     }
     return map;
  }
}

