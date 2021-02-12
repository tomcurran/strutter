part of openapi.api;

class ActivityType {
  /// The underlying value of this enum member.
  final String value;

  const ActivityType._internal(this.value);

  /// An enumeration of the types an activity may have.
  static const ActivityType alpineSki_ = const ActivityType._internal("AlpineSki");
  /// An enumeration of the types an activity may have.
  static const ActivityType backcountrySki_ = const ActivityType._internal("BackcountrySki");
  /// An enumeration of the types an activity may have.
  static const ActivityType canoeing_ = const ActivityType._internal("Canoeing");
  /// An enumeration of the types an activity may have.
  static const ActivityType crossfit_ = const ActivityType._internal("Crossfit");
  /// An enumeration of the types an activity may have.
  static const ActivityType eBikeRide_ = const ActivityType._internal("EBikeRide");
  /// An enumeration of the types an activity may have.
  static const ActivityType elliptical_ = const ActivityType._internal("Elliptical");
  /// An enumeration of the types an activity may have.
  static const ActivityType golf_ = const ActivityType._internal("Golf");
  /// An enumeration of the types an activity may have.
  static const ActivityType handcycle_ = const ActivityType._internal("Handcycle");
  /// An enumeration of the types an activity may have.
  static const ActivityType hike_ = const ActivityType._internal("Hike");
  /// An enumeration of the types an activity may have.
  static const ActivityType iceSkate_ = const ActivityType._internal("IceSkate");
  /// An enumeration of the types an activity may have.
  static const ActivityType inlineSkate_ = const ActivityType._internal("InlineSkate");
  /// An enumeration of the types an activity may have.
  static const ActivityType kayaking_ = const ActivityType._internal("Kayaking");
  /// An enumeration of the types an activity may have.
  static const ActivityType kitesurf_ = const ActivityType._internal("Kitesurf");
  /// An enumeration of the types an activity may have.
  static const ActivityType nordicSki_ = const ActivityType._internal("NordicSki");
  /// An enumeration of the types an activity may have.
  static const ActivityType ride_ = const ActivityType._internal("Ride");
  /// An enumeration of the types an activity may have.
  static const ActivityType rockClimbing_ = const ActivityType._internal("RockClimbing");
  /// An enumeration of the types an activity may have.
  static const ActivityType rollerSki_ = const ActivityType._internal("RollerSki");
  /// An enumeration of the types an activity may have.
  static const ActivityType rowing_ = const ActivityType._internal("Rowing");
  /// An enumeration of the types an activity may have.
  static const ActivityType run_ = const ActivityType._internal("Run");
  /// An enumeration of the types an activity may have.
  static const ActivityType sail_ = const ActivityType._internal("Sail");
  /// An enumeration of the types an activity may have.
  static const ActivityType skateboard_ = const ActivityType._internal("Skateboard");
  /// An enumeration of the types an activity may have.
  static const ActivityType snowboard_ = const ActivityType._internal("Snowboard");
  /// An enumeration of the types an activity may have.
  static const ActivityType snowshoe_ = const ActivityType._internal("Snowshoe");
  /// An enumeration of the types an activity may have.
  static const ActivityType soccer_ = const ActivityType._internal("Soccer");
  /// An enumeration of the types an activity may have.
  static const ActivityType stairStepper_ = const ActivityType._internal("StairStepper");
  /// An enumeration of the types an activity may have.
  static const ActivityType standUpPaddling_ = const ActivityType._internal("StandUpPaddling");
  /// An enumeration of the types an activity may have.
  static const ActivityType surfing_ = const ActivityType._internal("Surfing");
  /// An enumeration of the types an activity may have.
  static const ActivityType swim_ = const ActivityType._internal("Swim");
  /// An enumeration of the types an activity may have.
  static const ActivityType velomobile_ = const ActivityType._internal("Velomobile");
  /// An enumeration of the types an activity may have.
  static const ActivityType virtualRide_ = const ActivityType._internal("VirtualRide");
  /// An enumeration of the types an activity may have.
  static const ActivityType virtualRun_ = const ActivityType._internal("VirtualRun");
  /// An enumeration of the types an activity may have.
  static const ActivityType walk_ = const ActivityType._internal("Walk");
  /// An enumeration of the types an activity may have.
  static const ActivityType weightTraining_ = const ActivityType._internal("WeightTraining");
  /// An enumeration of the types an activity may have.
  static const ActivityType wheelchair_ = const ActivityType._internal("Wheelchair");
  /// An enumeration of the types an activity may have.
  static const ActivityType windsurf_ = const ActivityType._internal("Windsurf");
  /// An enumeration of the types an activity may have.
  static const ActivityType workout_ = const ActivityType._internal("Workout");
  /// An enumeration of the types an activity may have.
  static const ActivityType yoga_ = const ActivityType._internal("Yoga");

  static ActivityType fromJson(String value) {
    return new ActivityTypeTypeTransformer().decode(value);
  }
  
  static List<ActivityType> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActivityType>() : json.map((value) => ActivityType.fromJson(value)).toList();
  }
}

class ActivityTypeTypeTransformer {

  dynamic encode(ActivityType data) {
    return data.value;
  }

  ActivityType decode(dynamic data) {
    switch (data) {
      case "AlpineSki": return ActivityType.alpineSki_;
      case "BackcountrySki": return ActivityType.backcountrySki_;
      case "Canoeing": return ActivityType.canoeing_;
      case "Crossfit": return ActivityType.crossfit_;
      case "EBikeRide": return ActivityType.eBikeRide_;
      case "Elliptical": return ActivityType.elliptical_;
      case "Golf": return ActivityType.golf_;
      case "Handcycle": return ActivityType.handcycle_;
      case "Hike": return ActivityType.hike_;
      case "IceSkate": return ActivityType.iceSkate_;
      case "InlineSkate": return ActivityType.inlineSkate_;
      case "Kayaking": return ActivityType.kayaking_;
      case "Kitesurf": return ActivityType.kitesurf_;
      case "NordicSki": return ActivityType.nordicSki_;
      case "Ride": return ActivityType.ride_;
      case "RockClimbing": return ActivityType.rockClimbing_;
      case "RollerSki": return ActivityType.rollerSki_;
      case "Rowing": return ActivityType.rowing_;
      case "Run": return ActivityType.run_;
      case "Sail": return ActivityType.sail_;
      case "Skateboard": return ActivityType.skateboard_;
      case "Snowboard": return ActivityType.snowboard_;
      case "Snowshoe": return ActivityType.snowshoe_;
      case "Soccer": return ActivityType.soccer_;
      case "StairStepper": return ActivityType.stairStepper_;
      case "StandUpPaddling": return ActivityType.standUpPaddling_;
      case "Surfing": return ActivityType.surfing_;
      case "Swim": return ActivityType.swim_;
      case "Velomobile": return ActivityType.velomobile_;
      case "VirtualRide": return ActivityType.virtualRide_;
      case "VirtualRun": return ActivityType.virtualRun_;
      case "Walk": return ActivityType.walk_;
      case "WeightTraining": return ActivityType.weightTraining_;
      case "Wheelchair": return ActivityType.wheelchair_;
      case "Windsurf": return ActivityType.windsurf_;
      case "Workout": return ActivityType.workout_;
      case "Yoga": return ActivityType.yoga_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

