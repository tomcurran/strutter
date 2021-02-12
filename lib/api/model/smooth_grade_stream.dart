part of openapi.api;

class SmoothGradeStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of grade values for this stream, as percents of a grade */
  List<double> data = [];
  SmoothGradeStream();

  @override
  String toString() {
    return 'SmoothGradeStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  SmoothGradeStream.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    originalSize = json['original_size'];
    resolution = json['resolution'];
    seriesType = json['series_type'];
    data = (json['data'] == null) ?
      null :
      (json['data'] as List).cast<double>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (originalSize != null)
      json['original_size'] = originalSize;
    if (resolution != null)
      json['resolution'] = resolution;
    if (seriesType != null)
      json['series_type'] = seriesType;
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<SmoothGradeStream> listFromJson(List<dynamic> json) {
    return json == null ? List<SmoothGradeStream>() : json.map((value) => SmoothGradeStream.fromJson(value)).toList();
  }

  static Map<String, SmoothGradeStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SmoothGradeStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SmoothGradeStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SmoothGradeStream-objects as value to a dart map
  static Map<String, List<SmoothGradeStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SmoothGradeStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SmoothGradeStream.listFromJson(value);
       });
     }
     return map;
  }
}

