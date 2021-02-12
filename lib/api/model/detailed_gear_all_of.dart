part of openapi.api;

class DetailedGearAllOf {
  /* The gear's brand name. */
  String brandName = null;
  /* The gear's model name. */
  String modelName = null;
  /* The gear's frame type (bike only). */
  int frameType = null;
  /* The gear's description. */
  String description = null;
  DetailedGearAllOf();

  @override
  String toString() {
    return 'DetailedGearAllOf[brandName=$brandName, modelName=$modelName, frameType=$frameType, description=$description, ]';
  }

  DetailedGearAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    brandName = json['brand_name'];
    modelName = json['model_name'];
    frameType = json['frame_type'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
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

  static List<DetailedGearAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<DetailedGearAllOf>() : json.map((value) => DetailedGearAllOf.fromJson(value)).toList();
  }

  static Map<String, DetailedGearAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DetailedGearAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DetailedGearAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DetailedGearAllOf-objects as value to a dart map
  static Map<String, List<DetailedGearAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DetailedGearAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DetailedGearAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

