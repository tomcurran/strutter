part of openapi.api;

class Error {
  /* The code associated with this error. */
  String code = null;
  /* The specific field or aspect of the resource associated with this error. */
  String field = null;
  /* The type of resource associated with this error. */
  String resource = null;
  Error();

  @override
  String toString() {
    return 'Error[code=$code, field=$field, resource=$resource, ]';
  }

  Error.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    field = json['field'];
    resource = json['resource'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (field != null)
      json['field'] = field;
    if (resource != null)
      json['resource'] = resource;
    return json;
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null ? List<Error>() : json.map((value) => Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Error>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Error.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Error-objects as value to a dart map
  static Map<String, List<Error>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Error>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Error.listFromJson(value);
       });
     }
     return map;
  }
}

