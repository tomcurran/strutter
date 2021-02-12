part of openapi.api;



class RunningRacesApi {
  final ApiClient apiClient;

  RunningRacesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Running Race with HTTP info returned
  ///
  /// Returns a running race for a given identifier.
  Future<Response> getRunningRaceByIdWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/running_races/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get Running Race
  ///
  /// Returns a running race for a given identifier.
  Future<RunningRace> getRunningRaceById(int id) async {
    Response response = await getRunningRaceByIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RunningRace') as RunningRace;
    } else {
      return null;
    }
  }

  /// List Running Races with HTTP info returned
  ///
  /// Returns a list running races based on a set of search criteria.
  Future<Response> getRunningRacesWithHttpInfo({ int year }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/running_races".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(year != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "year", year));
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

  /// List Running Races
  ///
  /// Returns a list running races based on a set of search criteria.
  Future<List<RunningRace>> getRunningRaces({ int year }) async {
    Response response = await getRunningRacesWithHttpInfo( year: year );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<RunningRace>') as List).map((item) => item as RunningRace).toList();
    } else {
      return null;
    }
  }

}
