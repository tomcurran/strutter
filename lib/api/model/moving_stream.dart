part of openapi.api;

class MovingStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of moving values for this stream, as boolean values */
  List<bool> data = [];
  MovingStream();

  @override
  String toString() {
    return 'MovingStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  MovingStream.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    originalSize = json['original_size'];
    resolution = json['resolution'];
    seriesType = json['series_type'];
    data = (json['data'] == null) ?
      null :
      (json['data'] as List).cast<bool>();
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

  static List<MovingStream> listFromJson(List<dynamic> json) {
    return json == null ? List<MovingStream>() : json.map((value) => MovingStream.fromJson(value)).toList();
  }

  static Map<String, MovingStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MovingStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MovingStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MovingStream-objects as value to a dart map
  static Map<String, List<MovingStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MovingStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MovingStream.listFromJson(value);
       });
     }
     return map;
  }
}

