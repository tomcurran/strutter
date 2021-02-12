part of openapi.api;

class ExplorerResponse {
  /* The set of segments matching an explorer request */
  List<ExplorerSegment> segments = [];
  ExplorerResponse();

  @override
  String toString() {
    return 'ExplorerResponse[segments=$segments, ]';
  }

  ExplorerResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    segments = (json['segments'] == null) ?
      null :
      ExplorerSegment.listFromJson(json['segments']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (segments != null)
      json['segments'] = segments;
    return json;
  }

  static List<ExplorerResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ExplorerResponse>() : json.map((value) => ExplorerResponse.fromJson(value)).toList();
  }

  static Map<String, ExplorerResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExplorerResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExplorerResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExplorerResponse-objects as value to a dart map
  static Map<String, List<ExplorerResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExplorerResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExplorerResponse.listFromJson(value);
       });
     }
     return map;
  }
}

