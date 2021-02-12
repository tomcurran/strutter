part of openapi.api;

class PhotosSummaryPrimary {
  
  int id = null;
  
  int source_ = null;
  
  String uniqueId = null;
  
  Map<String, String> urls = {};
  PhotosSummaryPrimary();

  @override
  String toString() {
    return 'PhotosSummaryPrimary[id=$id, source_=$source_, uniqueId=$uniqueId, urls=$urls, ]';
  }

  PhotosSummaryPrimary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    source_ = json['source'];
    uniqueId = json['unique_id'];
    urls = (json['urls'] == null) ?
      null :
      (json['urls'] as Map).cast<String, String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (source_ != null)
      json['source'] = source_;
    if (uniqueId != null)
      json['unique_id'] = uniqueId;
    if (urls != null)
      json['urls'] = urls;
    return json;
  }

  static List<PhotosSummaryPrimary> listFromJson(List<dynamic> json) {
    return json == null ? List<PhotosSummaryPrimary>() : json.map((value) => PhotosSummaryPrimary.fromJson(value)).toList();
  }

  static Map<String, PhotosSummaryPrimary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PhotosSummaryPrimary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PhotosSummaryPrimary.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PhotosSummaryPrimary-objects as value to a dart map
  static Map<String, List<PhotosSummaryPrimary>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PhotosSummaryPrimary>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PhotosSummaryPrimary.listFromJson(value);
       });
     }
     return map;
  }
}

