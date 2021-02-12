part of openapi.api;



class UploadsApi {
  final ApiClient apiClient;

  UploadsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Upload Activity with HTTP info returned
  ///
  /// Uploads a new data file to create an activity from. Requires activity:write scope.
  Future<Response> createUploadWithHttpInfo({ MultipartFile file, String name, String description, String trainer, String commute, String dataType, String externalId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/uploads".replaceAll("{format}","json");

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
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = file.field;
        mp.files.add(file);
      }
      if (name != null) {
        hasFields = true;
        mp.fields['name'] = parameterToString(name);
      }
      if (description != null) {
        hasFields = true;
        mp.fields['description'] = parameterToString(description);
      }
      if (trainer != null) {
        hasFields = true;
        mp.fields['trainer'] = parameterToString(trainer);
      }
      if (commute != null) {
        hasFields = true;
        mp.fields['commute'] = parameterToString(commute);
      }
      if (dataType != null) {
        hasFields = true;
        mp.fields['data_type'] = parameterToString(dataType);
      }
      if (externalId != null) {
        hasFields = true;
        mp.fields['external_id'] = parameterToString(externalId);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (name != null)
        formParams['name'] = parameterToString(name);
      if (description != null)
        formParams['description'] = parameterToString(description);
      if (trainer != null)
        formParams['trainer'] = parameterToString(trainer);
      if (commute != null)
        formParams['commute'] = parameterToString(commute);
      if (dataType != null)
        formParams['data_type'] = parameterToString(dataType);
      if (externalId != null)
        formParams['external_id'] = parameterToString(externalId);
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

  /// Upload Activity
  ///
  /// Uploads a new data file to create an activity from. Requires activity:write scope.
  Future<Upload> createUpload({ MultipartFile file, String name, String description, String trainer, String commute, String dataType, String externalId }) async {
    Response response = await createUploadWithHttpInfo( file: file, name: name, description: description, trainer: trainer, commute: commute, dataType: dataType, externalId: externalId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Upload') as Upload;
    } else {
      return null;
    }
  }

  /// Get Upload with HTTP info returned
  ///
  /// Returns an upload for a given identifier. Requires activity:write scope.
  Future<Response> getUploadByIdWithHttpInfo(int uploadId) async {
    Object postBody;

    // verify required params are set
    if(uploadId == null) {
     throw ApiException(400, "Missing required param: uploadId");
    }

    // create path and map variables
    String path = "/uploads/{uploadId}".replaceAll("{format}","json").replaceAll("{" + "uploadId" + "}", uploadId.toString());

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

  /// Get Upload
  ///
  /// Returns an upload for a given identifier. Requires activity:write scope.
  Future<Upload> getUploadById(int uploadId) async {
    Response response = await getUploadByIdWithHttpInfo(uploadId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Upload') as Upload;
    } else {
      return null;
    }
  }

}
