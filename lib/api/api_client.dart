part of openapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://www.strava.com/api/v3"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['strava_oauth'] = OAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ActivityStats':
          return ActivityStats.fromJson(value);
        case 'ActivityTotal':
          return ActivityTotal.fromJson(value);
        case 'ActivityType':
          return new ActivityTypeTypeTransformer().decode(value);
        case 'ActivityZone':
          return ActivityZone.fromJson(value);
        case 'AltitudeStream':
          return AltitudeStream.fromJson(value);
        case 'AltitudeStreamAllOf':
          return AltitudeStreamAllOf.fromJson(value);
        case 'BaseStream':
          return BaseStream.fromJson(value);
        case 'CadenceStream':
          return CadenceStream.fromJson(value);
        case 'CadenceStreamAllOf':
          return CadenceStreamAllOf.fromJson(value);
        case 'Comment':
          return Comment.fromJson(value);
        case 'DetailedActivity':
          return DetailedActivity.fromJson(value);
        case 'DetailedActivityAllOf':
          return DetailedActivityAllOf.fromJson(value);
        case 'DetailedAthlete':
          return DetailedAthlete.fromJson(value);
        case 'DetailedAthleteAllOf':
          return DetailedAthleteAllOf.fromJson(value);
        case 'DetailedClub':
          return DetailedClub.fromJson(value);
        case 'DetailedClubAllOf':
          return DetailedClubAllOf.fromJson(value);
        case 'DetailedGear':
          return DetailedGear.fromJson(value);
        case 'DetailedGearAllOf':
          return DetailedGearAllOf.fromJson(value);
        case 'DetailedSegment':
          return DetailedSegment.fromJson(value);
        case 'DetailedSegmentAllOf':
          return DetailedSegmentAllOf.fromJson(value);
        case 'DetailedSegmentEffort':
          return DetailedSegmentEffort.fromJson(value);
        case 'DetailedSegmentEffortAllOf':
          return DetailedSegmentEffortAllOf.fromJson(value);
        case 'DistanceStream':
          return DistanceStream.fromJson(value);
        case 'DistanceStreamAllOf':
          return DistanceStreamAllOf.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ExplorerResponse':
          return ExplorerResponse.fromJson(value);
        case 'ExplorerSegment':
          return ExplorerSegment.fromJson(value);
        case 'Fault':
          return Fault.fromJson(value);
        case 'HeartRateZoneRanges':
          return HeartRateZoneRanges.fromJson(value);
        case 'HeartrateStream':
          return HeartrateStream.fromJson(value);
        case 'HeartrateStreamAllOf':
          return HeartrateStreamAllOf.fromJson(value);
        case 'Lap':
          return Lap.fromJson(value);
        case 'LatLngStream':
          return LatLngStream.fromJson(value);
        case 'LatLngStreamAllOf':
          return LatLngStreamAllOf.fromJson(value);
        case 'MetaActivity':
          return MetaActivity.fromJson(value);
        case 'MetaAthlete':
          return MetaAthlete.fromJson(value);
        case 'MetaClub':
          return MetaClub.fromJson(value);
        case 'MovingStream':
          return MovingStream.fromJson(value);
        case 'MovingStreamAllOf':
          return MovingStreamAllOf.fromJson(value);
        case 'PhotosSummary':
          return PhotosSummary.fromJson(value);
        case 'PhotosSummaryPrimary':
          return PhotosSummaryPrimary.fromJson(value);
        case 'PolylineMap':
          return PolylineMap.fromJson(value);
        case 'PowerStream':
          return PowerStream.fromJson(value);
        case 'PowerStreamAllOf':
          return PowerStreamAllOf.fromJson(value);
        case 'PowerZoneRanges':
          return PowerZoneRanges.fromJson(value);
        case 'Route':
          return Route.fromJson(value);
        case 'RunningRace':
          return RunningRace.fromJson(value);
        case 'SmoothGradeStream':
          return SmoothGradeStream.fromJson(value);
        case 'SmoothGradeStreamAllOf':
          return SmoothGradeStreamAllOf.fromJson(value);
        case 'SmoothVelocityStream':
          return SmoothVelocityStream.fromJson(value);
        case 'SmoothVelocityStreamAllOf':
          return SmoothVelocityStreamAllOf.fromJson(value);
        case 'Split':
          return Split.fromJson(value);
        case 'StreamSet':
          return StreamSet.fromJson(value);
        case 'SummaryActivity':
          return SummaryActivity.fromJson(value);
        case 'SummaryActivityAllOf':
          return SummaryActivityAllOf.fromJson(value);
        case 'SummaryAthlete':
          return SummaryAthlete.fromJson(value);
        case 'SummaryAthleteAllOf':
          return SummaryAthleteAllOf.fromJson(value);
        case 'SummaryClub':
          return SummaryClub.fromJson(value);
        case 'SummaryClubAllOf':
          return SummaryClubAllOf.fromJson(value);
        case 'SummaryGear':
          return SummaryGear.fromJson(value);
        case 'SummaryPRSegmentEffort':
          return SummaryPRSegmentEffort.fromJson(value);
        case 'SummarySegment':
          return SummarySegment.fromJson(value);
        case 'SummarySegmentEffort':
          return SummarySegmentEffort.fromJson(value);
        case 'TemperatureStream':
          return TemperatureStream.fromJson(value);
        case 'TemperatureStreamAllOf':
          return TemperatureStreamAllOf.fromJson(value);
        case 'TimeStream':
          return TimeStream.fromJson(value);
        case 'TimeStreamAllOf':
          return TimeStreamAllOf.fromJson(value);
        case 'TimedZoneRange':
          return TimedZoneRange.fromJson(value);
        case 'TimedZoneRangeAllOf':
          return TimedZoneRangeAllOf.fromJson(value);
        case 'UpdatableActivity':
          return UpdatableActivity.fromJson(value);
        case 'Upload':
          return Upload.fromJson(value);
        case 'ZoneRange':
          return ZoneRange.fromJson(value);
        case 'Zones':
          return Zones.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String nullableContentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    if (nullableContentType != null) {
      final contentType = nullableContentType;
      headerParams['Content-Type'] = contentType;
    }

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = nullableContentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      final nullableHeaderParams = (headerParams.isEmpty)? null: headerParams;
      switch(method) {
        case "POST":
          return client.post(url, headers: nullableHeaderParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: nullableHeaderParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: nullableHeaderParams);
        case "PATCH":
          return client.patch(url, headers: nullableHeaderParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: nullableHeaderParams);
        default:
          return client.get(url, headers: nullableHeaderParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
