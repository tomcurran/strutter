part of openapi.api;

class CadenceStream {
  /* The number of data points in this stream */
  int originalSize = null;
  /* The level of detail (sampling) in which this stream was returned */
  String resolution = null;
  //enum resolutionEnum {  low,  medium,  high,  };{
  /* The base series used in the case the stream was downsampled */
  String seriesType = null;
  //enum seriesTypeEnum {  distance,  time,  };{
  /* The sequence of cadence values for this stream, in rotations per minute */
  List<int> data = [];
  CadenceStream();

  @override
  String toString() {
    return 'CadenceStream[originalSize=$originalSize, resolution=$resolution, seriesType=$seriesType, data=$data, ]';
  }

  CadenceStream.fromJson(Map<String, dynamic> json) {
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

  static List<CadenceStream> listFromJson(List<dynamic> json) {
    return json == null ? List<CadenceStream>() : json.map((value) => CadenceStream.fromJson(value)).toList();
  }

  static Map<String, CadenceStream> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CadenceStream>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CadenceStream.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CadenceStream-objects as value to a dart map
  static Map<String, List<CadenceStream>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CadenceStream>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CadenceStream.listFromJson(value);
       });
     }
     return map;
  }
}

