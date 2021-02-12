part of openapi.api;



class SegmentsApi {
  final ApiClient apiClient;

  SegmentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Explore segments with HTTP info returned
  ///
  /// Returns the top 10 segments matching a specified query.
  Future<Response> exploreSegmentsWithHttpInfo(List<double> bounds, { String activityType, int minCat, int maxCat }) async {
    Object postBody;

    // verify required params are set
    if(bounds == null) {
     throw ApiException(400, "Missing required param: bounds");
    }

    // create path and map variables
    String path = "/segments/explore".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "bounds", bounds));
    if(activityType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "activity_type", activityType));
    }
    if(minCat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min_cat", minCat));
    }
    if(maxCat != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_cat", maxCat));
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

  /// Explore segments
  ///
  /// Returns the top 10 segments matching a specified query.
  Future<ExplorerResponse> exploreSegments(List<double> bounds, { String activityType, int minCat, int maxCat }) async {
    Response response = await exploreSegmentsWithHttpInfo(bounds,  activityType: activityType, minCat: minCat, maxCat: maxCat );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ExplorerResponse') as ExplorerResponse;
    } else {
      return null;
    }
  }

  /// List Starred Segments with HTTP info returned
  ///
  /// List of the authenticated athlete&#39;s starred segments. Private segments are filtered out unless requested by a token with read_all scope.
  Future<Response> getLoggedInAthleteStarredSegmentsWithHttpInfo({ int page, int perPage }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/segments/starred".replaceAll("{format}","json");

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

  /// List Starred Segments
  ///
  /// List of the authenticated athlete&#39;s starred segments. Private segments are filtered out unless requested by a token with read_all scope.
  Future<List<SummarySegment>> getLoggedInAthleteStarredSegments({ int page, int perPage }) async {
    Response response = await getLoggedInAthleteStarredSegmentsWithHttpInfo( page: page, perPage: perPage );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<SummarySegment>') as List).map((item) => item as SummarySegment).toList();
    } else {
      return null;
    }
  }

  /// Get Segment with HTTP info returned
  ///
  /// Returns the specified segment. read_all scope required in order to retrieve athlete-specific segment information, or to retrieve private segments.
  Future<Response> getSegmentByIdWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/segments/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get Segment
  ///
  /// Returns the specified segment. read_all scope required in order to retrieve athlete-specific segment information, or to retrieve private segments.
  Future<DetailedSegment> getSegmentById(int id) async {
    Response response = await getSegmentByIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedSegment') as DetailedSegment;
    } else {
      return null;
    }
  }

  /// Star Segment with HTTP info returned
  ///
  /// Stars/Unstars the given segment for the authenticated athlete. Requires profile:write scope.
  Future<Response> starSegmentWithHttpInfo(int id, bool starred) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(starred == null) {
     throw ApiException(400, "Missing required param: starred");
    }

    // create path and map variables
    String path = "/segments/{id}/starred".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      if (starred != null) {
        hasFields = true;
        mp.fields['starred'] = parameterToString(starred);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (starred != null)
        formParams['starred'] = parameterToString(starred);
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

  /// Star Segment
  ///
  /// Stars/Unstars the given segment for the authenticated athlete. Requires profile:write scope.
  Future<DetailedSegment> starSegment(int id, bool starred) async {
    Response response = await starSegmentWithHttpInfo(id, starred);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DetailedSegment') as DetailedSegment;
    } else {
      return null;
    }
  }

}
