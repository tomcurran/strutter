part of openapi.api;

class SmoothGradeStreamAllOf {
  /* The sequence of grade values for this stream, as percents of a grade */
  List<double> data = [];
  SmoothGradeStreamAllOf();

  @override
  String toString() {
    return 'SmoothGradeStreamAllOf[data=$data, ]';
  }

  SmoothGradeStreamAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      (json['data'] as List).cast<double>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<SmoothGradeStreamAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<SmoothGradeStreamAllOf>() : json.map((value) => SmoothGradeStreamAllOf.fromJson(value)).toList();
  }

  static Map<String, SmoothGradeStreamAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SmoothGradeStreamAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SmoothGradeStreamAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SmoothGradeStreamAllOf-objects as value to a dart map
  static Map<String, List<SmoothGradeStreamAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SmoothGradeStreamAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SmoothGradeStreamAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

