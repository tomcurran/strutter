part of openapi.api;



class SegmentEffortsApi {
  final ApiClient apiClient;

  SegmentEffortsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List Segment Efforts with HTTP info returned
  ///
  /// Returns a set of the authenticated athlete&#39;s segment efforts for a given segment.  Requires subscription.
  Future<Response> getEffortsBySegmentIdWithHttpInfo(int segmentId, { DateTime startDateLocal, DateTime endDateLocal, int perPage }) async {
    Object postBody;

    // verify required params are set
    if(segmentId == null) {
     throw ApiException(400, "Missing required param: segmentId");
    }

    // create path and map variables
    String path = "/segment_efforts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "segment_id", segmentId));
    if(startDateLocal != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date_local", startDateLocal));
    }
    if(endDateLocal != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date_local", endDateLocal));
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

  /// List Segment Efforts
  ///
  /// Returns a set of the authenticated athlete&#39;s segment efforts for a given segment.  Requires subscription.
  Future<List<DetailedSegmentEffort>> getEffortsBySegmentId(int segmentId, { DateTime startDateLocal, DateTime endDateLocal, int perPage }) async {
    Response response = await getEffortsBySegmentIdWithHttpInfo(segmentId,  startDateLocal: startDateLocal, endDateLocal: endDateLocal, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<DetailedSegmentEffort>') as List).map((item) => item as DetailedSegmentEffort).toList();
    } else {
      return null;
    }
  }

  /// Get Segment Effort with HTTP info returned
  ///
  /// Returns a segment effort from an activity that is owned by the authenticated athlete. Requires subscription.
  Future<Response> getSegmentEffortByIdWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/segment_efforts/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get Segment Effort
  ///
  /// Returns a segment effort from an activity that is owned by the authenticated athlete. Requires subscription.
  Future<DetailedSegmentEffort> getSegmentEffortById(int id) async {
    Response response = await getSegmentEffortByIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedSegmentEffort') as DetailedSegmentEffort;
    } else {
      return null;
    }
  }

}
