part of openapi.api;



class AthletesApi {
  final ApiClient apiClient;

  AthletesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Authenticated Athlete with HTTP info returned
  ///
  /// Returns the currently authenticated athlete. Tokens with profile:read_all scope will receive a detailed athlete representation; all others will receive a summary representation.
  Future<Response> getLoggedInAthleteWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/athlete".replaceAll("{format}","json");

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

  /// Get Authenticated Athlete
  ///
  /// Returns the currently authenticated athlete. Tokens with profile:read_all scope will receive a detailed athlete representation; all others will receive a summary representation.
  Future<DetailedAthlete> getLoggedInAthlete() async {
    Response response = await getLoggedInAthleteWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedAthlete') as DetailedAthlete;
    } else {
      return null;
    }
  }

  /// Get Zones with HTTP info returned
  ///
  /// Returns the the authenticated athlete&#39;s heart rate and power zones. Requires profile:read_all.
  Future<Response> getLoggedInAthleteZonesWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/athlete/zones".replaceAll("{format}","json");

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

  /// Get Zones
  ///
  /// Returns the the authenticated athlete&#39;s heart rate and power zones. Requires profile:read_all.
  Future<Zones> getLoggedInAthleteZones() async {
    Response response = await getLoggedInAthleteZonesWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Zones') as Zones;
    } else {
      return null;
    }
  }

  /// Get Athlete Stats with HTTP info returned
  ///
  /// Returns the activity stats of an athlete. Only includes data from activities set to Everyone visibilty.
  Future<Response> getStatsWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/athletes/{id}/stats".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get Athlete Stats
  ///
  /// Returns the activity stats of an athlete. Only includes data from activities set to Everyone visibilty.
  Future<ActivityStats> getStats(int id) async {
    Response response = await getStatsWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ActivityStats') as ActivityStats;
    } else {
      return null;
    }
  }

  /// Update Athlete with HTTP info returned
  ///
  /// Update the currently authenticated athlete. Requires profile:write scope.
  Future<Response> updateLoggedInAthleteWithHttpInfo(double weight) async {
    Object postBody;

    // verify required params are set
    if(weight == null) {
     throw ApiException(400, "Missing required param: weight");
    }

    // create path and map variables
    String path = "/athlete".replaceAll("{format}","json").replaceAll("{" + "weight" + "}", weight.toString());

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

  /// Update Athlete
  ///
  /// Update the currently authenticated athlete. Requires profile:write scope.
  Future<DetailedAthlete> updateLoggedInAthlete(double weight) async {
    Response response = await updateLoggedInAthleteWithHttpInfo(weight);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedAthlete') as DetailedAthlete;
    } else {
      return null;
    }
  }

}
