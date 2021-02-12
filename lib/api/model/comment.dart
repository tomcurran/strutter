part of openapi.api;

class Comment {
  /* The unique identifier of this comment */
  int id = null;
  /* The identifier of the activity this comment is related to */
  int activityId = null;
  /* The content of the comment */
  String text = null;
  
  SummaryAthlete athlete = null;
  /* The time at which this comment was created. */
  DateTime createdAt = null;
  Comment();

  @override
  String toString() {
    return 'Comment[id=$id, activityId=$activityId, text=$text, athlete=$athlete, createdAt=$createdAt, ]';
  }

  Comment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    activityId = json['activity_id'];
    text = json['text'];
    athlete = (json['athlete'] == null) ?
      null :
      SummaryAthlete.fromJson(json['athlete']);
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (activityId != null)
      json['activity_id'] = activityId;
    if (text != null)
      json['text'] = text;
    if (athlete != null)
      json['athlete'] = athlete;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    return json;
  }

  static List<Comment> listFromJson(List<dynamic> json) {
    return json == null ? List<Comment>() : json.map((value) => Comment.fromJson(value)).toList();
  }

  static Map<String, Comment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Comment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Comment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Comment-objects as value to a dart map
  static Map<String, List<Comment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Comment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Comment.listFromJson(value);
       });
     }
     return map;
  }
}

