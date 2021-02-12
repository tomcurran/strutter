part of openapi.api;

class PhotosSummary {
  /* The number of photos */
  int count = null;
  
  PhotosSummaryPrimary primary = null;
  PhotosSummary();

  @override
  String toString() {
    return 'PhotosSummary[count=$count, primary=$primary, ]';
  }

  PhotosSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    primary = (json['primary'] == null) ?
      null :
      PhotosSummaryPrimary.fromJson(json['primary']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (primary != null)
      json['primary'] = primary;
    return json;
  }

  static List<PhotosSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<PhotosSummary>() : json.map((value) => PhotosSummary.fromJson(value)).toList();
  }

  static Map<String, PhotosSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PhotosSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PhotosSummary.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PhotosSummary-objects as value to a dart map
  static Map<String, List<PhotosSummary>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PhotosSummary>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PhotosSummary.listFromJson(value);
       });
     }
     return map;
  }
}

