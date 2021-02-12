part of openapi.api;

class Fault {
  /* The set of specific errors associated with this fault, if any. */
  List<Error> errors = [];
  /* The message of the fault. */
  String message = null;
  Fault();

  @override
  String toString() {
    return 'Fault[errors=$errors, message=$message, ]';
  }

  Fault.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errors = (json['errors'] == null) ?
      null :
      Error.listFromJson(json['errors']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errors != null)
      json['errors'] = errors;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<Fault> listFromJson(List<dynamic> json) {
    return json == null ? List<Fault>() : json.map((value) => Fault.fromJson(value)).toList();
  }

  static Map<String, Fault> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Fault>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Fault.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Fault-objects as value to a dart map
  static Map<String, List<Fault>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Fault>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Fault.listFromJson(value);
       });
     }
     return map;
  }
}

