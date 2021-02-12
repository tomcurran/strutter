part of openapi.api;

class ExplorerSegment {
  /* The unique identifier of this segment */
  int id = null;
  /* The name of this segment */
  String name = null;
  /* The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. If climb_category = 5, climb_category_desc = HC. If climb_category = 2, climb_category_desc = 3. */
  int climbCategory = null;
  /* The description for the category of the climb */
  String climbCategoryDesc = null;
  //enum climbCategoryDescEnum {  NC,  4,  3,  2,  1,  HC,  };{
  /* The segment's average grade, in percents */
  double avgGrade = null;
  /* A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. */
  List<double> startLatlng = [];
  /* A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. */
  List<double> endLatlng = [];
  /* The segments's evelation difference, in meters */
  double elevDifference = null;
  /* The segment's distance, in meters */
  double distance = null;
  /* The polyline of the segment */
  String points = null;
  ExplorerSegment();

  @override
  String toString() {
    return 'ExplorerSegment[id=$id, name=$name, climbCategory=$climbCategory, climbCategoryDesc=$climbCategoryDesc, avgGrade=$avgGrade, startLatlng=$startLatlng, endLatlng=$endLatlng, elevDifference=$elevDifference, distance=$distance, points=$points, ]';
  }

  ExplorerSegment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    climbCategory = json['climb_category'];
    climbCategoryDesc = json['climb_category_desc'];
    avgGrade = json['avg_grade'];
    startLatlng = (json['start_latlng'] == null) ?
      null :
      (json['start_latlng'] as List).cast<double>();
    endLatlng = (json['end_latlng'] == null) ?
      null :
      (json['end_latlng'] as List).cast<double>();
    elevDifference = json['elev_difference'];
    distance = json['distance'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (climbCategory != null)
      json['climb_category'] = climbCategory;
    if (climbCategoryDesc != null)
      json['climb_category_desc'] = climbCategoryDesc;
    if (avgGrade != null)
      json['avg_grade'] = avgGrade;
    if (startLatlng != null)
      json['start_latlng'] = startLatlng;
    if (endLatlng != null)
      json['end_latlng'] = endLatlng;
    if (elevDifference != null)
      json['elev_difference'] = elevDifference;
    if (distance != null)
      json['distance'] = distance;
    if (points != null)
      json['points'] = points;
    return json;
  }

  static List<ExplorerSegment> listFromJson(List<dynamic> json) {
    return json == null ? List<ExplorerSegment>() : json.map((value) => ExplorerSegment.fromJson(value)).toList();
  }

  static Map<String, ExplorerSegment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExplorerSegment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExplorerSegment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExplorerSegment-objects as value to a dart map
  static Map<String, List<ExplorerSegment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExplorerSegment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExplorerSegment.listFromJson(value);
       });
     }
     return map;
  }
}

