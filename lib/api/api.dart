library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/activities_api.dart';
part 'api/athletes_api.dart';
part 'api/clubs_api.dart';
part 'api/gears_api.dart';
part 'api/routes_api.dart';
part 'api/running_races_api.dart';
part 'api/segment_efforts_api.dart';
part 'api/segments_api.dart';
part 'api/streams_api.dart';
part 'api/uploads_api.dart';

part 'model/activity_stats.dart';
part 'model/activity_total.dart';
part 'model/activity_type.dart';
part 'model/activity_zone.dart';
part 'model/altitude_stream.dart';
part 'model/altitude_stream_all_of.dart';
part 'model/base_stream.dart';
part 'model/cadence_stream.dart';
part 'model/cadence_stream_all_of.dart';
part 'model/comment.dart';
part 'model/detailed_activity.dart';
part 'model/detailed_activity_all_of.dart';
part 'model/detailed_athlete.dart';
part 'model/detailed_athlete_all_of.dart';
part 'model/detailed_club.dart';
part 'model/detailed_club_all_of.dart';
part 'model/detailed_gear.dart';
part 'model/detailed_gear_all_of.dart';
part 'model/detailed_segment.dart';
part 'model/detailed_segment_all_of.dart';
part 'model/detailed_segment_effort.dart';
part 'model/detailed_segment_effort_all_of.dart';
part 'model/distance_stream.dart';
part 'model/distance_stream_all_of.dart';
part 'model/error.dart';
part 'model/explorer_response.dart';
part 'model/explorer_segment.dart';
part 'model/fault.dart';
part 'model/heart_rate_zone_ranges.dart';
part 'model/heartrate_stream.dart';
part 'model/heartrate_stream_all_of.dart';
part 'model/lap.dart';
part 'model/lat_lng_stream.dart';
part 'model/lat_lng_stream_all_of.dart';
part 'model/meta_activity.dart';
part 'model/meta_athlete.dart';
part 'model/meta_club.dart';
part 'model/moving_stream.dart';
part 'model/moving_stream_all_of.dart';
part 'model/photos_summary.dart';
part 'model/photos_summary_primary.dart';
part 'model/polyline_map.dart';
part 'model/power_stream.dart';
part 'model/power_stream_all_of.dart';
part 'model/power_zone_ranges.dart';
part 'model/route.dart';
part 'model/running_race.dart';
part 'model/smooth_grade_stream.dart';
part 'model/smooth_grade_stream_all_of.dart';
part 'model/smooth_velocity_stream.dart';
part 'model/smooth_velocity_stream_all_of.dart';
part 'model/split.dart';
part 'model/stream_set.dart';
part 'model/summary_activity.dart';
part 'model/summary_activity_all_of.dart';
part 'model/summary_athlete.dart';
part 'model/summary_athlete_all_of.dart';
part 'model/summary_club.dart';
part 'model/summary_club_all_of.dart';
part 'model/summary_gear.dart';
part 'model/summary_pr_segment_effort.dart';
part 'model/summary_segment.dart';
part 'model/summary_segment_effort.dart';
part 'model/temperature_stream.dart';
part 'model/temperature_stream_all_of.dart';
part 'model/time_stream.dart';
part 'model/time_stream_all_of.dart';
part 'model/timed_zone_range.dart';
part 'model/timed_zone_range_all_of.dart';
part 'model/updatable_activity.dart';
part 'model/upload.dart';
part 'model/zone_range.dart';
part 'model/zones.dart';


ApiClient defaultApiClient = ApiClient();
