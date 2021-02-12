part of openapi.api;

class StreamSet {
  
  TimeStream time = null;
  
  DistanceStream distance = null;
  
  LatLngStream latlng = null;
  
  AltitudeStream altitude = null;
  
  SmoothVelocityStream velocitySmooth = null;
  
  HeartrateStream heartrate = null;
  
  CadenceStream cadence = null;
  
  PowerStream watts = null;
  
  TemperatureStream temp = null;
  
  MovingStream moving = null;
  
  SmoothGradeStream gradeSmooth = null;
  StreamSet();

  @override
  String toString() {
    return 'StreamSet[time=$time, distance=$distance, latlng=$latlng, altitude=$altitude, velocitySmooth=$velocitySmooth, heartrate=$heartrate, cadence=$cadence, watts=$watts, temp=$temp, moving=$moving, gradeSmooth=$gradeSmooth, ]';
  }

  StreamSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    time = (json['time'] == null) ?
      null :
      TimeStream.fromJson(json['time']);
    distance = (json['distance'] == null) ?
      null :
      DistanceStream.fromJson(json['distance']);
    latlng = (json['latlng'] == null) ?
      null :
      LatLngStream.fromJson(json['latlng']);
    altitude = (json['altitude'] == null) ?
      null :
      AltitudeStream.fromJson(json['altitude']);
    velocitySmooth = (json['velocity_smooth'] == null) ?
      null :
      SmoothVelocityStream.fromJson(json['velocity_smooth']);
    heartrate = (json['heartrate'] == null) ?
      null :
      HeartrateStream.fromJson(json['heartrate']);
    cadence = (json['cadence'] == null) ?
      null :
      CadenceStream.fromJson(json['cadence']);
    watts = (json['watts'] == null) ?
      null :
      PowerStream.fromJson(json['watts']);
    temp = (json['temp'] == null) ?
      null :
      TemperatureStream.fromJson(json['temp']);
    moving = (json['moving'] == null) ?
      null :
      MovingStream.fromJson(json['moving']);
    gradeSmooth = (json['grade_smooth'] == null) ?
      null :
      SmoothGradeStream.fromJson(json['grade_smooth']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (time != null)
      json['time'] = time;
    if (distance != null)
      json['distance'] = distance;
    if (latlng != null)
      json['latlng'] = latlng;
    if (altitude != null)
      json['altitude'] = altitude;
    if (velocitySmooth != null)
      json['velocity_smooth'] = velocitySmooth;
    if (heartrate != null)
      json['heartrate'] = heartrate;
    if (cadence != null)
      json['cadence'] = cadence;
    if (watts != null)
      json['watts'] = watts;
    if (temp != null)
      json['temp'] = temp;
    if (moving != null)
      json['moving'] = moving;
    if (gradeSmooth != null)
      json['grade_smooth'] = gradeSmooth;
    return json;
  }

  static List<StreamSet> listFromJson(List<dynamic> json) {
    return json == null ? List<StreamSet>() : json.map((value) => StreamSet.fromJson(value)).toList();
  }

  static Map<String, StreamSet> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StreamSet>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StreamSet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StreamSet-objects as value to a dart map
  static Map<String, List<StreamSet>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<StreamSet>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = StreamSet.listFromJson(value);
       });
     }
     return map;
  }
}

