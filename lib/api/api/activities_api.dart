part of openapi.api;



class ActivitiesApi {
  final ApiClient apiClient;

  ActivitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create an Activity with HTTP info returned
  ///
  /// Creates a manual activity for an athlete, requires activity:write scope.
  Future<Response> createActivityWithHttpInfo(String name, String type, DateTime startDateLocal, int elapsedTime, { String description, double distance, int trainer, int commute }) async {
    Object postBody;

    // verify required params are set
    if(name == null) {
     throw ApiException(400, "Missing required param: name");
    }
    if(type == null) {
     throw ApiException(400, "Missing required param: type");
    }
    if(startDateLocal == null) {
     throw ApiException(400, "Missing required param: startDateLocal");
    }
    if(elapsedTime == null) {
     throw ApiException(400, "Missing required param: elapsedTime");
    }

    // create path and map variables
    String path = "/activities".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["multipart/form-data"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (name != null) {
        hasFields = true;
        mp.fields['name'] = parameterToString(name);
      }
      if (type != null) {
        hasFields = true;
        mp.fields['type'] = parameterToString(type);
      }
      if (startDateLocal != null) {
        hasFields = true;
        mp.fields['start_date_local'] = parameterToString(startDateLocal);
      }
      if (elapsedTime != null) {
        hasFields = true;
        mp.fields['elapsed_time'] = parameterToString(elapsedTime);
      }
      if (description != null) {
        hasFields = true;
        mp.fields['description'] = parameterToString(description);
      }
      if (distance != null) {
        hasFields = true;
        mp.fields['distance'] = parameterToString(distance);
      }
      if (trainer != null) {
        hasFields = true;
        mp.fields['trainer'] = parameterToString(trainer);
      }
      if (commute != null) {
        hasFields = true;
        mp.fields['commute'] = parameterToString(commute);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (name != null)
        formParams['name'] = parameterToString(name);
      if (type != null)
        formParams['type'] = parameterToString(type);
      if (startDateLocal != null)
        formParams['start_date_local'] = parameterToString(startDateLocal);
      if (elapsedTime != null)
        formParams['elapsed_time'] = parameterToString(elapsedTime);
      if (description != null)
        formParams['description'] = parameterToString(description);
      if (distance != null)
        formParams['distance'] = parameterToString(distance);
      if (trainer != null)
        formParams['trainer'] = parameterToString(trainer);
      if (commute != null)
        formParams['commute'] = parameterToString(commute);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create an Activity
  ///
  /// Creates a manual activity for an athlete, requires activity:write scope.
  Future<DetailedActivity> createActivity(String name, String type, DateTime startDateLocal, int elapsedTime, { String description, double distance, int trainer, int commute }) async {
    Response response = await createActivityWithHttpInfo(name, type, startDateLocal, elapsedTime,  description: description, distance: distance, trainer: trainer, commute: commute );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedActivity') as DetailedActivity;
    } else {
      return null;
    }
  }

  /// Get Activity with HTTP info returned
  ///
  /// Returns the given activity that is owned by the authenticated athlete. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<Response> getActivityByIdWithHttpInfo(int id, { bool includeAllEfforts }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(includeAllEfforts != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include_all_efforts", includeAllEfforts));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get Activity
  ///
  /// Returns the given activity that is owned by the authenticated athlete. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<DetailedActivity> getActivityById(int id, { bool includeAllEfforts }) async {
    Response response = await getActivityByIdWithHttpInfo(id,  includeAllEfforts: includeAllEfforts );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedActivity') as DetailedActivity;
    } else {
      return null;
    }
  }

  /// List Activity Comments with HTTP info returned
  ///
  /// Returns the comments on the given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<Response> getCommentsByActivityIdWithHttpInfo(int id, { int page, int perPage }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}/comments".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List Activity Comments
  ///
  /// Returns the comments on the given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<List<Comment>> getCommentsByActivityId(int id, { int page, int perPage }) async {
    Response response = await getCommentsByActivityIdWithHttpInfo(id,  page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Comment>') as List).map((item) => item as Comment).toList();
    } else {
      return null;
    }
  }

  /// List Activity Kudoers with HTTP info returned
  ///
  /// Returns the athletes who kudoed an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<Response> getKudoersByActivityIdWithHttpInfo(int id, { int page, int perPage }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}/kudos".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List Activity Kudoers
  ///
  /// Returns the athletes who kudoed an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<List<SummaryAthlete>> getKudoersByActivityId(int id, { int page, int perPage }) async {
    Response response = await getKudoersByActivityIdWithHttpInfo(id,  page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<SummaryAthlete>') as List).map((item) => item as SummaryAthlete).toList();
    } else {
      return null;
    }
  }

  /// List Activity Laps with HTTP info returned
  ///
  /// Returns the laps of an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<Response> getLapsByActivityIdWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}/laps".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List Activity Laps
  ///
  /// Returns the laps of an activity identified by an identifier. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<List<Lap>> getLapsByActivityId(int id) async {
    Response response = await getLapsByActivityIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Lap>') as List).map((item) => item as Lap).toList();
    } else {
      return null;
    }
  }

  /// List Athlete Activities with HTTP info returned
  ///
  /// Returns the activities of an athlete for a specific identifier. Requires activity:read. Only Me activities will be filtered out unless requested by a token with activity:read_all.
  Future<Response> getLoggedInAthleteActivitiesWithHttpInfo({ int before, int after, int page, int perPage }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/athlete/activities".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if(after != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List Athlete Activities
  ///
  /// Returns the activities of an athlete for a specific identifier. Requires activity:read. Only Me activities will be filtered out unless requested by a token with activity:read_all.
  Future<List<SummaryActivity>> getLoggedInAthleteActivities({ int before, int after, int page, int perPage }) async {
    Response response = await getLoggedInAthleteActivitiesWithHttpInfo( before: before, after: after, page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<SummaryActivity>') as List).map((item) => item as SummaryActivity).toList();
    } else {
      return null;
    }
  }

  /// Get Activity Zones with HTTP info returned
  ///
  /// Summit Feature. Returns the zones of a given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<Response> getZonesByActivityIdWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}/zones".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get Activity Zones
  ///
  /// Summit Feature. Returns the zones of a given activity. Requires activity:read for Everyone and Followers activities. Requires activity:read_all for Only Me activities.
  Future<List<ActivityZone>> getZonesByActivityId(int id) async {
    Response response = await getZonesByActivityIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ActivityZone>') as List).map((item) => item as ActivityZone).toList();
    } else {
      return null;
    }
  }

  /// Update Activity with HTTP info returned
  ///
  /// Updates the given activity that is owned by the authenticated athlete. Requires activity:write. Also requires activity:read_all in order to update Only Me activities
  Future<Response> updateActivityByIdWithHttpInfo(int id, { UpdatableActivity body }) async {
    Object postBody = body;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/activities/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["strava_oauth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Update Activity
  ///
  /// Updates the given activity that is owned by the authenticated athlete. Requires activity:write. Also requires activity:read_all in order to update Only Me activities
  Future<DetailedActivity> updateActivityById(int id, { UpdatableActivity body }) async {
    Response response = await updateActivityByIdWithHttpInfo(id,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedActivity') as DetailedActivity;
    } else {
      return null;
    }
  }

}
