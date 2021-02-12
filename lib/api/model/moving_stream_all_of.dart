part of openapi.api;

class MovingStreamAllOf {
  /* The sequence of moving values for this stream, as boolean values */
  List<bool> data = [];
  MovingStreamAllOf();

  @override
  String toString() {
    return 'MovingStreamAllOf[data=$data, ]';
  }

  MovingStreamAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      (json['data'] as List).cast<bool>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<MovingStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<MovingStreamAllOf>() : json.map((value) => MovingStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, MovingStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MovingStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MovingStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MovingStreamAllOf-objects as value to a dart map
  static Map<String, List<MovingStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MovingStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MovingStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

