part of openapi.api;

class DistanceStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of distance values for this stream, in meters */
  List<double> data = [];
  DistanceStream();

  @override
  String toString() {
    return 'DistanceStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  DistanceStream.fromJson(Map<String, dynamic> json) {
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

  static List<DistanceStream> listFromJson(List<dynamic> json) {
    return json == null ? List<DistanceStream>() : json.map((value) => DistanceStream.fromJson(value)).toList();
  }

  static Map<String, DistanceStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DistanceStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DistanceStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DistanceStream-objects as value to a dart map
  static Map<String, List<DistanceStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DistanceStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DistanceStream.listFromJson(value);
       });
     }
     return map;
  }
}

