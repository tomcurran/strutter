part of openapi.api;

class Upload {
  /* The unique identifier of the upload */
  int id = null;
  /* The unique identifier of the upload in string format */
  String idStr = null;
  /* The external identifier of the upload */
  String externalId = null;
  /* The error associated with this upload */
  String error = null;
  /* The status of this upload */
  String status = null;
  /* The identifier of the activity this upload resulted into */
  int activityId = null;
  Upload();

  @override
  String toString() {
    return 'Upload[id=$id, idStr=$idStr, externalId=$externalId, error=$error, status=$status, activityId=$activityId, ]';
  }

  Upload.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    idStr = json['id_str'];
    externalId = json['external_id'];
    error = json['error'];
    status = json['status'];
    activityId = json['activity_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (idStr != null)
      json['id_str'] = idStr;
    if (externalId != null)
      json['external_id'] = externalId;
    if (error != null)
      json['error'] = error;
    if (status != null)
      json['status'] = status;
    if (activityId != null)
      json['activity_id'] = activityId;
    return json;
  }

  static List<Upload> listFromJson(List<dynamic> json) {
    return json == null ? List<Upload>() : json.map((value) => Upload.fromJson(value)).toList();
  }

  static Map<String, Upload> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Upload>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Upload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Upload-objects as value to a dart map
  static Map<String, List<Upload>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Upload>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Upload.listFromJson(value);
       });
     }
     return map;
  }
}

