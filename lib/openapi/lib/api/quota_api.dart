//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QuotaApi {
  QuotaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove any quota set for an existing mail account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   Registered mail account.
  Future<Response> deleteQuotaWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/quota';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'email', email));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove any quota set for an existing mail account.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   Registered mail account.
  Future<void> deleteQuota(String email,) async {
    final response = await deleteQuotaWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set a quota (storage limit) for an existing mail account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateQuotaRequest] updateQuotaRequest (required):
  ///   <strong>Configuration adjustments :</strong> <pre> quota     The quota value is in bytes. You may use a unit suffix for convenience,           such as 10M for 10 MebiBytes (MiB). A value of 0 opts out of enforcing quota. </pre> 
  Future<Response> updateQuotaWithHttpInfo(UpdateQuotaRequest updateQuotaRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/quota';

    // ignore: prefer_final_locals
    Object? postBody = updateQuotaRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set a quota (storage limit) for an existing mail account.
  ///
  /// Parameters:
  ///
  /// * [UpdateQuotaRequest] updateQuotaRequest (required):
  ///   <strong>Configuration adjustments :</strong> <pre> quota     The quota value is in bytes. You may use a unit suffix for convenience,           such as 10M for 10 MebiBytes (MiB). A value of 0 opts out of enforcing quota. </pre> 
  Future<void> updateQuota(UpdateQuotaRequest updateQuotaRequest,) async {
    final response = await updateQuotaWithHttpInfo(updateQuotaRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
