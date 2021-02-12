part of openapi.api;

class TimeStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of time values for this stream, in seconds */
  List<int> data = [];
  TimeStream();

  @override
  String toString() {
    return 'TimeStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  TimeStream.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    originalSize = json['original_size'];
    resolution = json['resolution'];
    seriesType = json['series_type'];
    data = (json['data'] == null) ?
      null :
      (json['data'] as List).cast<int>();
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

  static List<TimeStream> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeStream>() : json.map((value) => TimeStream.fromJson(value)).toList();
  }

  static Map<String, TimeStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeStream-objects as value to a dart map
  static Map<String, List<TimeStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimeStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimeStream.listFromJson(value);
       });
     }
     return map;
  }
}

