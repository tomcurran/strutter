part of openapi.api;

class SmoothVelocityStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of velocity values for this stream, in meters per second */
  List<double> data = [];
  SmoothVelocityStream();

  @override
  String toString() {
    return 'SmoothVelocityStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  SmoothVelocityStream.fromJson(Map<String, dynamic> json) {
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

  static List<SmoothVelocityStream> listFromJson(List<dynamic> json) {
    return json == null ? List<SmoothVelocityStream>() : json.map((value) => SmoothVelocityStream.fromJson(value)).toList();
  }

  static Map<String, SmoothVelocityStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SmoothVelocityStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SmoothVelocityStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SmoothVelocityStream-objects as value to a dart map
  static Map<String, List<SmoothVelocityStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SmoothVelocityStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SmoothVelocityStream.listFromJson(value);
       });
     }
     return map;
  }
}

