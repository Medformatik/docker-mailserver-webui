//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DovecotApi {
  DovecotApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new dovecot-master account (for POP3/IMAP administration).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddDovecotMasterRequest] addDovecotMasterRequest (required):
  Future<Response> addDovecotMasterWithHttpInfo(AddDovecotMasterRequest addDovecotMasterRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dovecot/master';

    // ignore: prefer_final_locals
    Object? postBody = addDovecotMasterRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add a new dovecot-master account (for POP3/IMAP administration).
  ///
  /// Parameters:
  ///
  /// * [AddDovecotMasterRequest] addDovecotMasterRequest (required):
  Future<void> addDovecotMaster(AddDovecotMasterRequest addDovecotMasterRequest,) async {
    final response = await addDovecotMasterWithHttpInfo(addDovecotMasterRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a dovecot-master account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] username (required):
  ///   Dovecot master username.
  Future<Response> deleteDovecotMasterWithHttpInfo(List<String> username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dovecot/master';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('multi', 'username', username));

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

  /// Remove a dovecot-master account.
  ///
  /// Parameters:
  ///
  /// * [List<String>] username (required):
  ///   Dovecot master username.
  Future<void> deleteDovecotMaster(List<String> username,) async {
    final response = await deleteDovecotMasterWithHttpInfo(username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get list dovecot-master account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDovecotMasterWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dovecot/master';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get list dovecot-master account.
  Future<void> getDovecotMaster() async {
    final response = await getDovecotMasterWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update the password for a dovecot-master account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddDovecotMasterRequest] addDovecotMasterRequest (required):
  Future<Response> updateDovecotMasterWithHttpInfo(AddDovecotMasterRequest addDovecotMasterRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/dovecot/master';

    // ignore: prefer_final_locals
    Object? postBody = addDovecotMasterRequest;

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

  /// Update the password for a dovecot-master account.
  ///
  /// Parameters:
  ///
  /// * [AddDovecotMasterRequest] addDovecotMasterRequest (required):
  Future<void> updateDovecotMaster(AddDovecotMasterRequest addDovecotMasterRequest,) async {
    final response = await updateDovecotMasterWithHttpInfo(addDovecotMasterRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
