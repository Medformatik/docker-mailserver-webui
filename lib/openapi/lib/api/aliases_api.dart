//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AliasesApi {
  AliasesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add an alias for a recipient (a mail account).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddAliasRequest] addAliasRequest (required):
  Future<Response> addAliasWithHttpInfo(AddAliasRequest addAliasRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/alias';

    // ignore: prefer_final_locals
    Object? postBody = addAliasRequest;

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

  /// Add an alias for a recipient (a mail account).
  ///
  /// Parameters:
  ///
  /// * [AddAliasRequest] addAliasRequest (required):
  Future<void> addAlias(AddAliasRequest addAliasRequest,) async {
    final response = await addAliasWithHttpInfo(addAliasRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a mail account (the recipient) from an existing alias.
  ///
  /// If the alias has no more recipients, the alias will also be removed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAlias (required):
  ///   Mail account alias.
  ///
  /// * [String] emailRecipient (required):
  ///   Mail account recipient.
  Future<Response> deleteAliasWithHttpInfo(String emailAlias, String emailRecipient,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/alias';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAlias', emailAlias));
      queryParams.addAll(_queryParams('', 'emailRecipient', emailRecipient));

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

  /// Remove a mail account (the recipient) from an existing alias.
  ///
  /// If the alias has no more recipients, the alias will also be removed.
  ///
  /// Parameters:
  ///
  /// * [String] emailAlias (required):
  ///   Mail account alias.
  ///
  /// * [String] emailRecipient (required):
  ///   Mail account recipient.
  Future<void> deleteAlias(String emailAlias, String emailRecipient,) async {
    final response = await deleteAliasWithHttpInfo(emailAlias, emailRecipient,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
