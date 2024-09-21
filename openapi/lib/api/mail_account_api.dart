//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MailAccountApi {
  MailAccountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new mail account (email address).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddEmailRequest] addEmailRequest (required):
  Future<Response> addEmailWithHttpInfo(AddEmailRequest addEmailRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/email';

    // ignore: prefer_final_locals
    Object? postBody = addEmailRequest;

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

  /// Add a new mail account (email address).
  ///
  /// Parameters:
  ///
  /// * [AddEmailRequest] addEmailRequest (required):
  Future<void> addEmail(AddEmailRequest addEmailRequest,) async {
    final response = await addEmailWithHttpInfo(addEmailRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add a mail account to restricted list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddEmailRestrictRequest] addEmailRestrictRequest (required):
  ///   <strong>Configuration adjustments :</strong> <pre> access    The type of access that will be restricted.           Possible values: send, receive </pre> 
  Future<Response> addEmailRestrictWithHttpInfo(AddEmailRestrictRequest addEmailRestrictRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/email/restrict';

    // ignore: prefer_final_locals
    Object? postBody = addEmailRestrictRequest;

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

  /// Add a mail account to restricted list.
  ///
  /// Parameters:
  ///
  /// * [AddEmailRestrictRequest] addEmailRestrictRequest (required):
  ///   <strong>Configuration adjustments :</strong> <pre> access    The type of access that will be restricted.           Possible values: send, receive </pre> 
  Future<void> addEmailRestrict(AddEmailRestrictRequest addEmailRestrictRequest,) async {
    final response = await addEmailRestrictWithHttpInfo(addEmailRestrictRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a mail account, including associated data (aliases, quotas) and optionally the mailbox storage for that account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   Registered mail account.
  Future<Response> deleteEmailWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/email';

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

  /// Delete a mail account, including associated data (aliases, quotas) and optionally the mailbox storage for that account.
  ///
  /// Parameters:
  ///
  /// * [String] email (required):
  ///   Registered mail account.
  Future<void> deleteEmail(String email,) async {
    final response = await deleteEmailWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a mail account from the restricted list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] access (required):
  ///   The type of access that will be restricted.
  ///
  /// * [String] email (required):
  ///   Registered mail account.
  Future<Response> deleteEmailRestrictWithHttpInfo(String access, String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/email/restrict';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'access', access));
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

  /// Remove a mail account from the restricted list.
  ///
  /// Parameters:
  ///
  /// * [String] access (required):
  ///   The type of access that will be restricted.
  ///
  /// * [String] email (required):
  ///   Registered mail account.
  Future<void> deleteEmailRestrict(String access, String email,) async {
    final response = await deleteEmailRestrictWithHttpInfo(access, email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all registered mail account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEmailWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/email';

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

  /// Get all registered mail account.
  Future<GetEmail200Response?> getEmail() async {
    final response = await getEmailWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetEmail200Response',) as GetEmail200Response;
    
    }
    return null;
  }

  /// Display restricted mail accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   Registered mail account.
  Future<Response> getEmailRestrictWithHttpInfo({ String? email, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/email/restrict';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }

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

  /// Display restricted mail accounts.
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   Registered mail account.
  Future<void> getEmailRestrict({ String? email, }) async {
    final response = await getEmailRestrictWithHttpInfo( email: email, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update the password for a mail account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateEmailRequest] updateEmailRequest (required):
  Future<Response> updateEmailWithHttpInfo(UpdateEmailRequest updateEmailRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/email';

    // ignore: prefer_final_locals
    Object? postBody = updateEmailRequest;

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

  /// Update the password for a mail account.
  ///
  /// Parameters:
  ///
  /// * [UpdateEmailRequest] updateEmailRequest (required):
  Future<void> updateEmail(UpdateEmailRequest updateEmailRequest,) async {
    final response = await updateEmailWithHttpInfo(updateEmailRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
