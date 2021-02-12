part of openapi.api;

class TemperatureStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of temperature values for this stream, in celsius degrees */
  List<int> data = [];
  TemperatureStream();

  @override
  String toString() {
    return 'TemperatureStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  TemperatureStream.fromJson(Map<String, dynamic> json) {
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

  static List<TemperatureStream> listFromJson(List<dynamic> json) {
    return json == null ? List<TemperatureStream>() : json.map((value) => TemperatureStream.fromJson(value)).toList();
  }

  static Map<String, TemperatureStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TemperatureStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TemperatureStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TemperatureStream-objects as value to a dart map
  static Map<String, List<TemperatureStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TemperatureStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TemperatureStream.listFromJson(value);
       });
     }
     return map;
  }
}

