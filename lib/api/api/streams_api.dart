part of openapi.api;



class StreamsApi {
  final ApiClient apiClient;

  StreamsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Activity Streams with HTTP info returned
  ///
  /// Returns the given activity&#39;s streams. Requires activity:read scope. Requires activity:read_all scope for Only Me activities.
  Future<Response> getActivityStreamsWithHttpInfo(int id, List<String> keys, bool keyByType) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(keys == null) {
     throw ApiException(400, "Missing required param: keys");
    }
    if(keyByType == null) {
     throw ApiException(400, "Missing required param: keyByType");
    }

    // create path and map variables
    String path = "/activities/{id}/streams".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "keys", keys));
      queryParams.addAll(_convertParametersForCollectionFormat("", "key_by_type", keyByType));

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

  /// Get Activity Streams
  ///
  /// Returns the given activity&#39;s streams. Requires activity:read scope. Requires activity:read_all scope for Only Me activities.
  Future<StreamSet> getActivityStreams(int id, List<String> keys, bool keyByType) async {
    Response response = await getActivityStreamsWithHttpInfo(id, keys, keyByType);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'StreamSet') as StreamSet;
    } else {
      return null;
    }
  }

  /// Get Route Streams with HTTP info returned
  ///
  /// Returns the given route&#39;s streams. Requires read_all scope for private routes.
  Future<Response> getRouteStreamsWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/routes/{id}/streams".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get Route Streams
  ///
  /// Returns the given route&#39;s streams. Requires read_all scope for private routes.
  Future<StreamSet> getRouteStreams(int id) async {
    Response response = await getRouteStreamsWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'StreamSet') as StreamSet;
    } else {
      return null;
    }
  }

  /// Get Segment Effort Streams with HTTP info returned
  ///
  /// Returns a set of streams for a segment effort completed by the authenticated athlete. Requires read_all scope.
  Future<Response> getSegmentEffortStreamsWithHttpInfo(int id, List<String> keys, bool keyByType) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(keys == null) {
     throw ApiException(400, "Missing required param: keys");
    }
    if(keyByType == null) {
     throw ApiException(400, "Missing required param: keyByType");
    }

    // create path and map variables
    String path = "/segment_efforts/{id}/streams".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "keys", keys));
      queryParams.addAll(_convertParametersForCollectionFormat("", "key_by_type", keyByType));

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

  /// Get Segment Effort Streams
  ///
  /// Returns a set of streams for a segment effort completed by the authenticated athlete. Requires read_all scope.
  Future<StreamSet> getSegmentEffortStreams(int id, List<String> keys, bool keyByType) async {
    Response response = await getSegmentEffortStreamsWithHttpInfo(id, keys, keyByType);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'StreamSet') as StreamSet;
    } else {
      return null;
    }
  }

  /// Get Segment Streams with HTTP info returned
  ///
  /// Returns the given segment&#39;s streams. Requires read_all scope for private segments.
  Future<Response> getSegmentStreamsWithHttpInfo(int id, List<String> keys, bool keyByType) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(keys == null) {
     throw ApiException(400, "Missing required param: keys");
    }
    if(keyByType == null) {
     throw ApiException(400, "Missing required param: keyByType");
    }

    // create path and map variables
    String path = "/segments/{id}/streams".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "keys", keys));
      queryParams.addAll(_convertParametersForCollectionFormat("", "key_by_type", keyByType));

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

  /// Get Segment Streams
  ///
  /// Returns the given segment&#39;s streams. Requires read_all scope for private segments.
  Future<StreamSet> getSegmentStreams(int id, List<String> keys, bool keyByType) async {
    Response response = await getSegmentStreamsWithHttpInfo(id, keys, keyByType);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'StreamSet') as StreamSet;
    } else {
      return null;
    }
  }

}
