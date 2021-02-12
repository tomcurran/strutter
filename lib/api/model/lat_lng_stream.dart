part of openapi.api;

class LatLngStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of lat/long values for this stream */
  List<List> data = [];
  LatLngStream();

  @override
  String toString() {
    return 'LatLngStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  LatLngStream.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    originalSize = json['original_size'];
    resolution = json['resolution'];
    seriesType = json['series_type'];
    data = (json['data'] == null) ? null : List.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (originalSize != null) json['original_size'] = originalSize;
    if (resolution != null) json['resolution'] = resolution;
    if (seriesType != null) json['series_type'] = seriesType;
    if (data != null) json['data'] = data;
    return json;
  }

  static List<LatLngStream> listFromJson(List<dynamic> json) {
    return json == null
        ? List<LatLngStream>()
        : json.map((value) => LatLngStream.fromJson(value)).toList();
  }

  static Map<String, LatLngStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LatLngStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = LatLngStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LatLngStream-objects as value to a dart map
  static Map<String, List<LatLngStream>> mapListFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, List<LatLngStream>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = LatLngStream.listFromJson(value);
      });
    }
    return map;
  }
}
