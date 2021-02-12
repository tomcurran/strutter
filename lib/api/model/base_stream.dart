part of openapi.api;

class BaseStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  BaseStream();

  @override
  String toString() {
    return 'BaseStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, ]';
  }

  BaseStream.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    originalSize = json['original_size'];
    resolution = json['resolution'];
    seriesType = json['series_type'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (originalSize != null)
      json['original_size'] = originalSize;
    if (resolution != null)
      json['resolution'] = resolution;
    if (seriesType != null)
      json['series_type'] = seriesType;
    return json;
  }

  static List<BaseStream> listFromJson(List<dynamic> json) {
    return json == null ? List<BaseStream>() : json.map((value) => BaseStream.fromJson(value)).toList();
  }

  static Map<String, BaseStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BaseStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BaseStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BaseStream-objects as value to a dart map
  static Map<String, List<BaseStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BaseStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BaseStream.listFromJson(value);
       });
     }
     return map;
  }
}

